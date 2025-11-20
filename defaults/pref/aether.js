// Default preferences for Aether Browser
// This file contains Aether-specific default preferences

// ===== STARTUP AND HOMEPAGE =====
pref("browser.startup.homepage", "about:blank");
pref("browser.newtabpage.enabled", false);
pref("browser.startup.page", 0); // 0=blank, 1=home, 3=restore session

// ===== TABS AND WINDOWS =====
pref("browser.tabs.closeWindowWithLastTab", false);
pref("browser.tabs.warnOnClose", false);
pref("browser.tabs.warnOnCloseOtherTabs", false);
pref("browser.tabs.warnOnOpen", false);
pref("browser.tabs.loadInBackground", true);

// ===== PRIVACY AND SECURITY =====
pref("privacy.trackingprotection.enabled", true);
pref("privacy.trackingprotection.socialtracking.enabled", true);
pref("privacy.donottrackheader.enabled", true);
pref("privacy.clearOnShutdown.cache", true);
pref("privacy.clearOnShutdown.cookies", false);
pref("privacy.clearOnShutdown.history", false);

// ===== TELEMETRY AND DATA COLLECTION =====
pref("datareporting.healthreport.uploadEnabled", false);
pref("datareporting.policy.dataSubmissionEnabled", false);
pref("toolkit.telemetry.enabled", false);
pref("toolkit.telemetry.unified", false);
pref("toolkit.telemetry.archive.enabled", false);
pref("experiments.supported", false);
pref("experiments.enabled", false);
pref("network.allow-experiments", false);

// ===== UPDATES =====
pref("app.update.enabled", false);
pref("app.update.auto", false);
pref("extensions.update.enabled", false);

// ===== DEVELOPER FEATURES =====
pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
pref("devtools.chrome.enabled", true);
pref("devtools.debugger.remote-enabled", true);
pref("devtools.theme", "dark");

// ===== AETHER-SPECIFIC FEATURES =====
pref("aether.devtools.enabled", true);
pref("aether.commandPalette.enabled", true);
pref("aether.treeTabs.enabled", true);
pref("aether.ciel.integration", true);
pref("aether.ai.enabled", false); // Disabled by default until implemented
pref("aether.customization.enabled", true);
pref("aether.performance.optimized", true);

// ===== SEARCH =====
pref("browser.search.suggest.enabled", false);
pref("browser.urlbar.suggest.searches", false);
pref("browser.urlbar.suggest.quicksuggest.sponsored", false);
pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);

// ===== NETWORK =====
pref("network.dns.disablePrefetch", true);
pref("network.prefetch-next", false);
pref("network.predictor.enabled", false);

// ===== MEDIA =====
pref("media.autoplay.default", 5); // Block audio and video
pref("media.autoplay.blocking_policy", 2);

// ===== PERFORMANCE =====
pref("browser.cache.disk.enable", true);
pref("browser.cache.memory.enable", true);
pref("browser.sessionhistory.max_total_viewers", 4);

// ===== UI CUSTOMIZATION =====
pref("browser.toolbars.bookmarks.visibility", "never");
pref("browser.uidensity", 1); // Compact UI
pref("layout.css.prefers-color-scheme.content-override", 0); // Follow system theme
