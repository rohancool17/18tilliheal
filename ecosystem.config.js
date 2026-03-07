module.exports = {
    apps: [
        {
            name: '18heal',
            script: 'serve',
            env: {
                PM2_SERVE_PATH: './web',
                PM2_SERVE_PORT: 7100,
                PM2_SERVE_SPA: 'true',
                PM2_SERVE_HOMEPAGE: '/index.html'
            }
        }
    ]
};
