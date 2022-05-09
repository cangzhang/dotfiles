// Use https://finicky-kickstart.now.sh to generate basic configuration
// Learn more about configuration options: https://github.com/johnste/finicky/wiki/Configuration

const workProfile = {
  name: "Google Chrome",
  profile: "Profile 1",
};

const defaultProfile = {
  name: "Google Chrome",
  profile: "Default",
}

module.exports = {
  defaultBrowser: defaultProfile,
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
  ],
};
