'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/material.png": "6daf304356cc010c1d23585c44041143",
"assets/assets/wechat.png": "199febd121794aabdee55fb9d0aeec92",
"assets/assets/alipay.jpg": "2b9c6010ae04652649b978fe7a8d35c4",
"assets/AssetManifest.json": "f999bf485100d9c3a54b7bd32b88448e",
"assets/FontManifest.json": "d76146777456e3ca96c7764cdab311bc",
"assets/fonts/Umenaviicon1.ttf": "2713c3f0b9de3ba85608412f1db0fa28",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/packages/tetris/assets/audios/explosion.mp3": "2c8b5dd3f51298bbeb019ce1316aa6b9",
"assets/packages/tetris/assets/audios/clean.mp3": "ac70daf98741de473dec0eacdac333e8",
"assets/packages/tetris/assets/audios/move.mp3": "389fd99cd348d712668fa34fd9738753",
"assets/packages/tetris/assets/audios/start.mp3": "a5ca4c3bbeeb2d74b90ec1554a55cb1b",
"assets/packages/tetris/assets/audios/drop.mp3": "154540aeac037695ec1d80adfdff8936",
"assets/packages/tetris/assets/audios/rotate.mp3": "23789f16afc6b9cd22711ffde1baa57f",
"assets/packages/tetris/assets/material.png": "6daf304356cc010c1d23585c44041143",
"assets/packages/tetris/assets/wechat.png": "199febd121794aabdee55fb9d0aeec92",
"assets/packages/tetris/assets/alipay.jpg": "2b9c6010ae04652649b978fe7a8d35c4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/slidingpuzzle/images/kousyou/8.png": "a2d7079449130c93939127930694b532",
"assets/packages/slidingpuzzle/images/kousyou/10.png": "4f58faf82c2a227db51c977d1a5fcf38",
"assets/packages/slidingpuzzle/images/kousyou/2.png": "fe700bcc9f1d3536a0dab62679c06a4d",
"assets/packages/slidingpuzzle/images/kousyou/16.png": "d167bb5c2f3370c6e1155e56a7dea4fa",
"assets/packages/slidingpuzzle/images/kousyou/12.png": "9ebefbc91d9df7e328469e280aef52ac",
"assets/packages/slidingpuzzle/images/kousyou/1.png": "3bd6cc9b4f5f1075771367b60bc71a60",
"assets/packages/slidingpuzzle/images/kousyou/9.png": "e7ee142e058966ef58645deb5386695d",
"assets/packages/slidingpuzzle/images/kousyou/3.png": "5f1dacfbad1c8706a445157e03b23950",
"assets/packages/slidingpuzzle/images/kousyou/7.png": "caa190f5e3089965ae414964ecbaeeea",
"assets/packages/slidingpuzzle/images/kousyou/6.png": "a2fccbea45b36c0cb5e186a693d4bfcb",
"assets/packages/slidingpuzzle/images/kousyou/13.png": "0d5f623ee6f1e71f88c4263646a30615",
"assets/packages/slidingpuzzle/images/kousyou/11.png": "3abff102cc93ecfe71681d567c050825",
"assets/packages/slidingpuzzle/images/kousyou/15.png": "4c32a86d94e538b4126cbc086793830c",
"assets/packages/slidingpuzzle/images/kousyou/14.png": "3d90573ddd1e0720c810fc2b0e7cc9ab",
"assets/packages/slidingpuzzle/images/kousyou/4.png": "3bd6cc9b4f5f1075771367b60bc71a60",
"assets/packages/slidingpuzzle/images/kousyou/5.png": "5e61635eb169d5dc0df59a94b3350603",
"assets/NOTICES": "3b95dbbab115fada395c356e2d6343bd",
"assets/images/others/TimeTable_2.png": "3cd35553fb0cc4bb488a45cf373a0fa5",
"assets/images/others/TimeTable.png": "90d87c022e6939b296a76825b9b610b1",
"assets/images/maps/1F.drawio.svg": "05eb6b53fc3d8ec8f02ea4718c5be9dd",
"assets/images/maps/4F.png": "5171a0868ae5bd7c1a608b9ad52fbd6f",
"assets/images/maps/1F.png%2520-%2520%25E3%2582%25B7%25E3%2583%25A7%25E3%2583%25BC%25E3%2583%2588%25E3%2582%25AB%25E3%2583%2583%25E3%2583%2588.lnk": "62ae2f71c896850437d76007514e7dea",
"assets/images/maps/1F.png": "04e0a01c01a7529f041560d97ad609be",
"assets/images/maps/2F.png": "de529a1142a88ed24ab4b92ca5d57ab3",
"assets/images/maps/3F.png": "e984c036a93d299165f3639b78eef91b",
"assets/images/icon/games.svg": "ca7abc7c03e88924a5b4ed0e8b3ba292",
"assets/images/icon/Icon.png": "5e1c0b6e69448cac40a95317a78ddfc0",
"assets/images/icon/tetris-svgrepo-com.svg": "64624c2d9830a0a18a2ebefa4398c8d7",
"assets/images/icon/iconmonstr-map-2-240.svg": "6c5f7a55bceb48909f5ff36dbef90dcd",
"assets/images/icon/icon_158931_256.svg": "ef8cd0e10d8fe463af778b928fa63ede",
"assets/images/icon/iconumenavi.svg": "0eab06e925f1adf96ec366aea253e09a",
"assets/images/icon/room_black_24dp.svg": "e1c76e3e29aee3f1ba79c03297a50d6a",
"assets/images/icon/icon_111651_256.svg": "dcf183b6c29eec81b534f655141187ed",
"assets/images/kousyou/8.png": "a2d7079449130c93939127930694b532",
"assets/images/kousyou/10.png": "4f58faf82c2a227db51c977d1a5fcf38",
"assets/images/kousyou/2.png": "fe700bcc9f1d3536a0dab62679c06a4d",
"assets/images/kousyou/16.png": "d167bb5c2f3370c6e1155e56a7dea4fa",
"assets/images/kousyou/12.png": "9ebefbc91d9df7e328469e280aef52ac",
"assets/images/kousyou/1.png": "3bd6cc9b4f5f1075771367b60bc71a60",
"assets/images/kousyou/9.png": "e7ee142e058966ef58645deb5386695d",
"assets/images/kousyou/3.png": "5f1dacfbad1c8706a445157e03b23950",
"assets/images/kousyou/7.png": "caa190f5e3089965ae414964ecbaeeea",
"assets/images/kousyou/6.png": "a2fccbea45b36c0cb5e186a693d4bfcb",
"assets/images/kousyou/13.png": "0d5f623ee6f1e71f88c4263646a30615",
"assets/images/kousyou/11.png": "3abff102cc93ecfe71681d567c050825",
"assets/images/kousyou/15.png": "4c32a86d94e538b4126cbc086793830c",
"assets/images/kousyou/14.png": "3d90573ddd1e0720c810fc2b0e7cc9ab",
"assets/images/kousyou/4.png": "3bd6cc9b4f5f1075771367b60bc71a60",
"assets/images/kousyou/5.png": "5e61635eb169d5dc0df59a94b3350603",
"assets/asset/seattle.jpg": "b3497f8c3eac62f0f696e9423be862a0",
"icons/Icon-192.png": "623c53ddc62e44346ad095067a86b621",
"icons/Icon-512.png": "62bfc9a432f85dfb2c8c0564f371a2e2",
"favicon.png": "170f5cd91d4dc779470d6b906998c94e",
"manifest.json": "4a89203f52a7689216c75d80a8fbc0ee",
"version.json": "2fcf4c9ce005e70bb8f4faaa587fa215",
"sw.js": "1ce0f19e10edc72af46cd8e9a511665e",
"main.dart.js": "7581b7dfafc62ea3fedfce347c279f68",
"index.html": "fd5bc9d48c4e7b58f15042a429726346",
"/": "fd5bc9d48c4e7b58f15042a429726346"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
