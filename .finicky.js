// Use https://finicky-kickstart.now.sh to generate basic configuration
// Learn more about configuration options: https://github.com/johnste/finicky/wiki/Configuration

const workProfile = {
  name: "Google Chrome",
  profile: "Profile 1",
};

const primaryProfile = {
  name: "Google Chrome",
  profile: "Profile 3",
};

const edge = {
  name: "Microsoft Edge",
};

module.exports = {
  defaultBrowser: primaryProfile,
  handlers: [
    {
      match: /coding\.net/,
      browser: workProfile,
    },
    {
      match: /codingcorp/,
      browser: workProfile,
    },
    {
      match: /lexiang/,
      browser: workProfile,
    },
    {
      match: /oa\.com/,
      browser: workProfile,
    },
    {
      match: /exmail\.qq\.com/,
      browser: workProfile,
    },
    {
      match: /figma\.com/,
      browser: workProfile,
    },
    {
      match: /xiaohongshu\.com/,
      browser: edge,
    },
  ],
};
