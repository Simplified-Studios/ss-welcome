const app = new Vue({
    el: '#app',
    data: {
        logs: [],
        ImportantNotices: ''
    },
    mounted() {
        window.addEventListener('message', (event) => {
            const item = event.data;
            if (item.action === 'open') {
                this.logs = item.logs;
                this.ImportantNotices = item.ImportantNotices;

                $('#main').fadeIn();
            } else {
                $('#main').fadeOut();
            }
        });
    },
    methods: {
        Close() {
            $('#main').fadeOut();
            $.post('https://ss-welcome/close');
        },
        addLog(type, message, description, color) {
            this.logs.push({ type, message, description, color });
        },
        removeLog(index) {
            this.logs.splice(index, 1);
        }
    }
});
