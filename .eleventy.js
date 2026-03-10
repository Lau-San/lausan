module.exports = function (eleventyConfig) {
    // eleventyConfig.setWatchThrottleWaitTime(100);
    eleventyConfig.addPassthroughCopy("src/images");
    eleventyConfig.addPassthroughCopy("src/css");
    return {
        dir: {
            input: "src",
            output: "dist",
        },
    };
};
