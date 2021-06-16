function panic -d "Parse Go stack traces into a read-able format"
    # Verify panic parse is installed
    if not which pp 2>/dev/null
        echo "Panic parse is not installed"    
        exit 1
    end

    # Set all goroutines as visible
    set -l GOTRACEBACK all
    
    # Parse stack trace
    pp

    echo "GOTRACEBACK=$GOTRACEBACK"
end
