
            <table class="table table-bordered table-layout-fixed fs-sm" style="min-width: 45rem;">
                <thead>
                <tr>
                    <td class="align-middle">
                        <select class="form-select" id="compare-criteria" data-filter-trigger>
                            <option value="all">Comparison criteria *</option>
                            <option value="summary">Summary</option>
                            <option value="general">General</option>
                            <option value="multimedia">Multimedia</option>
                            <option value="performance">Performance</option>
                            <option value="design">Design</option>
                            <option value="display">Display</option>
                            <option value="storage">Storage</option>
                            <option value="camera">Camera</option>
                            <option value="battery">Battery</option>
                            <option value="price">Price &amp; rating</option>
                        </select>
                        <div class="form-text">* Choose criteria to filter table below.</div>
                        <div class="pt-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="differences">
                                <label class="form-check-label" for="differences">Show differences only</label>
                            </div>
                        </div>
                    </td>
                    <td class="text-center px-4 pb-4"><a class="btn btn-sm d-block w-100 text-danger mb-2" href="#"><i class="ci-trash me-1"></i>Remove</a><a class="d-inline-block mb-3" href="shop-single-v2.html"><img src="img/shop/comparison/01.jpg" width="80" alt="Apple iPhone Xs Max"></a>
                        <h3 class="product-title fs-sm"><a href="shop-single-v2.html">product 1</a></h3>
                        <button class="btn btn-primary btn-sm" type="button">Add to Cart</button>
                    </td>
                    <td class="text-center px-4 pb-4"><a class="btn btn-sm d-block w-100 text-danger mb-2" href="#"><i class="ci-trash me-1"></i>Remove</a><a class="d-inline-block mb-3" href="shop-single-v2.html"><img src="img/shop/comparison/02.jpg" width="80" alt="Google Pixel 3 XL"></a>
                        <h3 class="product-title fs-sm"><a href="shop-single-v2.html">product 2</a></h3>
                        <button class="btn btn-primary btn-sm" type="button">Add to Cart</button>
                    </td>
                </tr>
                </thead>
                <tbody id="summary" data-filter-target>
                <tr class="bg-secondary">
                    <th class="text-uppercase text-dark">type 1</th>
                    <td><span class="text-dark fw-medium text-dark">product 1</span></td>
                    <td><span class="text-dark fw-medium text-dark">product 2</span></td>
                </tr>
                <tr>
                    <th class="text-dark">product spec key 1 of type 1</th>
                    <td>product spec value 1 of key 1</td>
                    <td>product spec value 2 of key 1</td>
                </tr>
                <tr>
                    <th class="text-dark">product spec key 2 of type 1</th>
                    <td>product spec value 1 of key 2</td>
                    <td>product spec value 2 of key 2</td>
                </tr>
                </tbody>
                <tbody id="general" data-filter-target>
                <tr class="bg-secondary">
                    <th class="text-uppercase text-dark">type 2</th>
                    <td><span class="text-dark fw-medium text-dark">product 1</span></td>
                    <td><span class="text-dark fw-medium text-dark">product 2</span></td>
                </tr>
                <tr>
                    <th class="text-dark">product spec key 1 of type 2</th>
                    <td>product spec value 1 of key 1</td>
                    <td>product spec value 2 of key 2</td>
                </tr>
                <tr>
                    <th class="text-dark">product spec key 2 of type 2</th>
                    <td>product spec value 1 of key 1/td>
                    <td>product spec value 2 of key 2</td>
                </tr>
                </tbody>
            </table>
