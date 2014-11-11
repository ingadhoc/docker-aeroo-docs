Docker Aeroo Docs
==================

This is an image that allows you to launch the aeroo docs container

You should run the image with:
    sudo docker run --rm -ti -p 8989:8989 adhoc/aeroo-docs
    
But for now, until we solve two process issue, you should run:
    sudo docker run --rm -ti -p 8989:8989 adhoc/aeroo-docs-full /bin/bash
    soffice --nologo --nofirststartwizard --headless --norestore --invisible "--accept=socket,host=localhost,port=8100,tcpNoDelay=1;urp;" &
    /opt/aeroo_docs/aeroo-docs start
