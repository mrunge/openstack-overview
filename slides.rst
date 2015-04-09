:skip-help: true
:css: openstack-slides.css

.. title:: OpenStack

----

OpenStack: Kurzer Überblick
===========================


Matthias Runge <mrunge@matthias-runge.de>

.. image:: images/openstack-cloud-software-vertical-large.png
    :height: 300px
    :width: 400px


Oldenburg, 09.04.2015


----

:data-x: 4000

OpenStack
=========

* IaaS Lösung

  * AWS, Eucalyptus, OpenNebula, CloudStack, ...

* Implementiert in Python
* Release 2x im Jahr, Kilo: April 2015
* Verwaltet durch die OpenStack Foundation
* veröffentlicht unter ASL 2.0


----

Services
========

* Keystone

* Nova

* Glance

* Alle als Restful services implementiert

  * Python clients

----

Zusammenspiel der Services
==========================

#. Benutzer holt von Keystone Token
#. Benutzer startet eine Instanz über Nova
#. Nova holt von Glance mit Token von Nutzer ein Image
#. Nova startet das Image z.B. mittels libvirt auf kvm.

----

Logisches Konzept
=================

.. image:: images/openstack_havana_conceptual_arch.png

----

.. image:: images/openstack-arch-havana-logical-v1.jpg

----

Weitere Services
================

* Cinder, Swift
* Heat
* Horizon
* Trove, Sahara
* Ceilometer
* Neutron

----

Keystone
========

* Authentifiziert und Authorisiert Nutzer und Services

* Authentifizierungsbackends: LDAP, SQL, ...

* Multi-Domain Support

----

Nova
====

* libvirt

  * kvm, xen, hyperv, vmware, lxc,...

  * Kann hot-migrate mit kvm

* Startet Maschinen

  * Ohne Storage

  * Kopiert ein Glance image und erzeugt daraus eine Bootable image

----

Neutron
=======

* Baut auf openvswitch

* Plugin Architektur

* Ersatz für nova-network

* Distributed router, SDN

* LBaaS

* FWaaS


----

Storage
=======

* Glance, Cinder, Swift

* Swift als Backend für Glance

* Ceph, Gluster, NFS für Cinder


----

Weitere Projekte im Umfeld
==========================

* Designate

* Ironic, TripleO

* puppet

* Murano (application catalog)

* Fuel (Installer für Mirantis OpenStack)

* zaquar

* Kubernetes

----

RDO
===

* upstream, mit möglichst wenig Patches
* Inklusive Installer
* jeweils *the latest and greatest*
* Bekannte Nutzer: CERN, >> 10.000 Maschinen
* Upstream für Red Hat OpenStack

----

Links
=====

* https://github.com/mrunge/openstack-overview

