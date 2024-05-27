const app = new Vue({
    el: '#app',
    data: {},
    mounted() {
        window.addEventListener('message', (event) => {
            const item = event.data;
            
            if (item.action === 'open') {
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
        }
    }
});