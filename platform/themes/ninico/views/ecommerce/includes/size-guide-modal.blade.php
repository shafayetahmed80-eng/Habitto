<div class="modal fade" id="sizeGuideModal" tabindex="-1" aria-labelledby="sizeGuideModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content border-0 shadow-lg" style="border-radius: 12px; overflow: hidden;">
            <div class="modal-header bg-dark text-white p-3">
                <h5 class="modal-title d-flex align-items-center gap-2 text-white" id="sizeGuideModalLabel">
                    <i class="far fa-ruler-horizontal text-warning"></i>
                    <span>Habitto BD &mdash; Size Guide (সাইজ চার্ট)</span>
                </h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <p class="text-muted small mb-3">
                    সঠিক সাইজটি নির্বাচন করতে নিচের পরিমাপগুলো লক্ষ্য করুন। সব পরিমাপ <b>ইঞ্চিতে (Inches)</b> দেওয়া হয়েছে:
                </p>

                <!-- Navigation Tabs -->
                <ul class="nav nav-pills nav-fill mb-3" id="sizeGuideTabs" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active fw-bold py-2" id="tshirt-tab" data-bs-toggle="pill" data-bs-target="#tshirt-pane" type="button" role="tab" aria-selected="true">
                            👕 T-Shirts & Polo
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link fw-bold py-2" id="pants-tab" data-bs-toggle="pill" data-bs-target="#pants-pane" type="button" role="tab" aria-selected="false">
                            👖 Pants & Jeans
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link fw-bold py-2" id="hoodie-tab" data-bs-toggle="pill" data-bs-target="#hoodie-pane" type="button" role="tab" aria-selected="false">
                            🧥 Hoodies & Winter
                        </button>
                    </li>
                </ul>

                <!-- Tabs Content -->
                <div class="tab-content" id="sizeGuideTabContent">
                    <!-- T-Shirts Pane -->
                    <div class="tab-pane fade show active" id="tshirt-pane" role="tabpanel" aria-labelledby="tshirt-tab" tabindex="0">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover text-center align-middle mb-0">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Size (সাইজ)</th>
                                        <th>Chest (বুকের মাপ - Inches)</th>
                                        <th>Length (লম্বা - Inches)</th>
                                        <th>Shoulder (কাঁধ - Inches)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">S</span></td>
                                        <td>38" &ndash; 39"</td>
                                        <td>26"</td>
                                        <td>17"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-primary px-3 py-2 fs-6">M</span></td>
                                        <td>40" &ndash; 41"</td>
                                        <td>27"</td>
                                        <td>18"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">L</span></td>
                                        <td>42" &ndash; 43"</td>
                                        <td>28"</td>
                                        <td>19"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">XL</span></td>
                                        <td>44" &ndash; 45"</td>
                                        <td>29"</td>
                                        <td>20"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">XXL</span></td>
                                        <td>46" &ndash; 47"</td>
                                        <td>30"</td>
                                        <td>21"</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Pants Pane -->
                    <div class="tab-pane fade" id="pants-pane" role="tabpanel" aria-labelledby="pants-tab" tabindex="0">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover text-center align-middle mb-0">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Waist Size (কোমর)</th>
                                        <th>Length (প্যান্টের দৈর্ঘ্য)</th>
                                        <th>Thigh (থাই / রান)</th>
                                        <th>Hip (হিপ)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">28</span></td>
                                        <td>38"</td>
                                        <td>22"</td>
                                        <td>36"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-primary px-3 py-2 fs-6">30</span></td>
                                        <td>39"</td>
                                        <td>23"</td>
                                        <td>38"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">32</span></td>
                                        <td>40"</td>
                                        <td>24"</td>
                                        <td>40"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">34</span></td>
                                        <td>41"</td>
                                        <td>25"</td>
                                        <td>42"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">36</span></td>
                                        <td>42"</td>
                                        <td>26"</td>
                                        <td>44"</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Hoodies Pane -->
                    <div class="tab-pane fade" id="hoodie-pane" role="tabpanel" aria-labelledby="hoodie-tab" tabindex="0">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover text-center align-middle mb-0">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Size (সাইজ)</th>
                                        <th>Chest (বুকের মাপ - Inches)</th>
                                        <th>Length (লম্বা - Inches)</th>
                                        <th>Sleeve (হাতা - Inches)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="badge bg-primary px-3 py-2 fs-6">M</span></td>
                                        <td>44"</td>
                                        <td>27"</td>
                                        <td>24"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">L</span></td>
                                        <td>46"</td>
                                        <td>28"</td>
                                        <td>25"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">XL</span></td>
                                        <td>48"</td>
                                        <td>29"</td>
                                        <td>26"</td>
                                    </tr>
                                    <tr>
                                        <td><span class="badge bg-secondary px-3 py-2 fs-6">XXL</span></td>
                                        <td>50"</td>
                                        <td>30"</td>
                                        <td>27"</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Measuring Help Guide -->
                <div class="card bg-light border-0 mt-3 p-3">
                    <h6 class="fw-bold mb-2"><i class="far fa-info-circle text-primary me-1"></i> কিভাবে সঠিক মাপ নিবেন?</h6>
                    <ul class="mb-0 small text-muted ps-3">
                        <li><b>বুকের মাপ (Chest):</b> ফিতা দিয়ে বুকের সবচেয়ে চওড়া অংশের চারপাশ ধরে সোজা করে মাপুন।</li>
                        <li><b>লম্বা (Length):</b> কাঁধের সংযোগস্থল থেকে টি-শার্ট বা শার্টের নিচের প্রান্ত পর্যন্ত মাপুন।</li>
                        <li><b>কোমর (Waist):</b> স্বাভাবিকভাবে যেখানে প্যান্ট পরেন, সেই কোমরের চারপাশ ফিতা দিয়ে মাপুন।</li>
                    </ul>
                </div>
            </div>
            <div class="modal-footer bg-light py-2">
                <button type="button" class="btn btn-dark btn-sm px-4" data-bs-dismiss="modal">Close (বন্ধ করুন)</button>
            </div>
        </div>
    </div>
</div>

<style>
    @media (max-width: 576px) {
        #sizeGuideModal .modal-dialog {
            margin: 10px;
        }
        #sizeGuideModal .modal-body {
            padding: 15px !important;
        }
        #sizeGuideTabs {
            flex-wrap: nowrap !important;
            overflow-x: auto !important;
            padding-bottom: 5px !important;
            -webkit-overflow-scrolling: touch;
        }
        #sizeGuideTabs .nav-item {
            flex: 0 0 auto !important;
        }
        #sizeGuideTabs .nav-link {
            font-size: 13px !important;
            padding: 7px 14px !important;
            white-space: nowrap !important;
        }
        #sizeGuideModal table {
            font-size: 13px !important;
            min-width: 320px;
        }
        #sizeGuideModal table th,
        #sizeGuideModal table td {
            padding: 8px 4px !important;
        }
        #sizeGuideModal table th {
            font-size: 12px !important;
        }
    }
</style>
