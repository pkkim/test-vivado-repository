# Testing
genrule(
    name = "run_xvlog_wrapper",
    srcs = ["xvlog_wrapper.sh", "memory.sv", "tb.sv"],  # Directly refer to the script
    outs = [".done"],  # A specific file in the output directory
    cmd = "bash $(location xvlog_wrapper.sh) $(location memory.sv) $(location tb.sv) && touch $(location .done)",
)
