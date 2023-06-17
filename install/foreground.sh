echo "waiting for kubectl-gadget to be installed"
while [ ! -f /tmp/finished ]; do sleep 1; done
echo "kubectl gadget is ready to be used"
