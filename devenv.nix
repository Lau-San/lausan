{pkgs, ...}: {
    env.GREET = "devenv";

    languages.javascript = {
        enable = true;
        npm.enable = true;
    };

    packages = with pkgs; [
        dart-sass
        neocities
    ];

    scripts = {
        # dev.exec = "npx @11ty/eleventy --serve";
        build.exec = "npx @11ty/eleventy";
        # styles.exec = "sass src/scss:dist/css --watch";
    };

    process.manager.implementation = "process-compose";
    process.managers.process-compose.tui.enable = true;

    profiles = {
        dev.module.processes = {
            eleventy = {
                exec = "npx @11ty/eleventy --serve";
            };
            sass = {
                exec = "sass src/scss/main.scss src/css/style.css --watch";
            };
        };
    };
}
