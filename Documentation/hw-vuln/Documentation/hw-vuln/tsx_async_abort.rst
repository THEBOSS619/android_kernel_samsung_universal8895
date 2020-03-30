. SPDX-License-Identifier: GPL-2.0TAA - TSX Asynchronous Abort======================================
TAA is a hardware vulnerability that allows unprivileged speculative access todata which is available in various CPU internal buffers by using asynchronousaborts within an Intel TSX transactional region.
Affected processors-------------------
This vulnerability only affects Intel processors that support IntelTransactional Synchronization Extensions (TSX) when the TAA_NO bit (bit 8)is 0 in the IA32_ARCH_CAPABILITIES MSR. On processors where the MDS_NO bit(bit 5) is 0 in the IA32_ARCH_CAPABILITIES MSR, the existing MDS mitigationsalso mitigate against TAA.
Whether a processor is affected or not can be read out from the TAAvulnerability file in sysfs. See :ref:`tsx_async_abort_sys_info`.
Related CVEs------------
The following CVE entry is related to this TAA issue:
============== ===== =================================================== CVE-2019-11135 TAA TSX Asynchronous Abort (TAA) condition on some microprocessors utilizing speculative execution may allow an authenticated user to potentially enable information disclosure via a side channel with local access. ============== ===== ===================================================
Problem-------
When performing store, load or L1 refill operations, processors writedata into temporary microarchitectural structures (buffers). The data inthose buffers can be forwarded to load operations as an optimization.
Intel TSX is an extension to the x86 instruction set architecture that addshardware transactional memory support to improve performance of multi-threaded
