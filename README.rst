========
telegraf
========

Install and configure Influxdata's Telegraf

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


Available states
================

.. contents::
    :local:

``telegraf``
------------

- Configure influxdata stable repo for Ubuntu 14.04
- Install package telegraf.
- Configure telegraf by using pillar information to render the configuration file.
- Initialize telegraf service.

Template
========

This formula was created from a cookiecutter template.

See https://github.com/richerve/saltstack-formula-cookiecutter.
