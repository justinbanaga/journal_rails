// import { defineConfig } from 'vite'
// import RubyPlugin from 'vite-plugin-ruby'

// export default defineConfig({
//   plugins: [
//     RubyPlugin(),
//   ],
// })

// inside vite.config.ts
 import { defineConfig } from 'vite'
 import RubyPlugin from 'vite-plugin-ruby'
 import FullReload from 'vite-plugin-full-reload'

 export default defineConfig({
   plugins: [
     RubyPlugin(),
     FullReload(['config/routes.rb', 'app/views/**/*'], { delay: 200 })
   ],
 })
