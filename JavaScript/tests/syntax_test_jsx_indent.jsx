// SYNTAX TEST reindent-unchanged "Packages/JavaScript/JSX.sublime-syntax"

function Layout({ env }) {
    return (
        <html>
        <head>
            <meta encoding="utf-8" />
            <link
                crossorigin="anonymous"
                media="all"
                rel="stylesheet"
                href="css/.css"
            />
            <script>
                {/*{ i = 0; }*/}
            </script>
        </head>
        <body>
            <h1>{env.title}</h1>
            <h2>
                {env.title}
            </h2>
            <hr/>
            {/* div tag with indented body */}
            <div class="content">
                here goes app content
            </div>
            {/* ignore quoted > */}
            <hr quoted=">"
                indented
            />
            {/* ignore > in interpolation */}
            <p interpolated={env.check > 0 ? "<yes>" : "<no>"}
                indented="attribute"
            >
                indented text
            </p>
            <p
                inputMode="attribute">
                indented text
            </p>
        </body>
        </html>
        );
}

function Video({ video }) {
    return (
        <div>
            <Thumbnail video={video} />
            <a href={video.url}>
                <h3>{video.title}</h3>
                <p>
                    {video.description}
                </p>
            </a>
            <LikeButton
                video={video}
            />
        </div>
        );
}

function VideoList({ videos, emptyHeading }) {
    const count = videos.length;
    let heading = emptyHeading;
    if (count > 0) {
        const noun = count > 1 ? 'Videos' : 'Video';
        heading = count + ' ' + noun;
    }
    return (
        <section>
            {/* start with a heading */}
            <h2>{heading}</h2>
            {
                // a list of videos
                videos.map(video =>
                    /*
                     * Call Video component
                     */
                    <div>
                        <Video key={video.id} video={video} />
                        <hr/>
                        <p>
                            {
                                video.spoiler
                            }
                        </p>
                    </div>
                    )
            }
        </section>
        );
}