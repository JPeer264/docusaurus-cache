# Reproduction

1. Build and run the docker image

    ```sh
    $ docker build -t docusaurus .
    $ docker run -p 3000:80 --rm docusaurus
    ```

1. Open http://localhost:3000/ in your browser and open up all pages.

1. In your browser return to the sidebar item **Reproduction** and reload the page (leave the cache as is)

1. In your editor change the header `/pages/subfolder/another-subfolder/modifyMe.md` to something else

1. Rebuild everything as described in point 1. (remember to not reload the page)

1. In the browser, and without reloading, open **Subfolder** and try to open **Some important heading**

1. 💥
