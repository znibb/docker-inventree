ARG INVENTREE_TAG=stable

FROM inventree/inventree:${INVENTREE_TAG}

RUN pip install --quiet inventree-kicad-plugin==2.0.3

COPY files/patch_serializer.py /tmp/patch_serializer.py
RUN python3 /tmp/patch_serializer.py && rm /tmp/patch_serializer.py
