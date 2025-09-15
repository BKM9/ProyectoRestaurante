<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Menú del Restaurante - Sabores Auténticos</title>
        <link rel="stylesheet" href="../css/main.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <script type="module" src="https://static.rocket.new/rocket-web.js?_cfg=https%3A%2F%2Frestaurant9704back.builtwithrocket.new&_be=https%3A%2F%2Fapplication.rocket.new&_v=0.1.8"></script>

        <script>
            fetch("http://localhost:8082/api/restaurante/consultarMenu")
                    .then(r => r.json())
                    .then(data => {
                        const contenedorEntradas = document.getElementById("menu-entradas");
                        const contenedorPrincipal = document.getElementById("menu-principales");
                        const contenedorPostres = document.getElementById("menu-postres");
                        const contenedorBebidas = document.getElementById("menu-bebidas");

                        if (!contenedorEntradas || !data.entrada)
                            return;

                        let htmlEntradas = "";
                        let htmlPrincipal = "";
                        let htmlPostre = "";
                        let htmlBebida = "";

                        if (data.entrada !== null) {
                            data.entrada.forEach(plato => {
                                htmlEntradas += `
                                <div class="menu-item bg-white rounded-xl shadow-warm hover:shadow-warm-lg transition-medium overflow-hidden" data-dietary="vegetarian">
                                    <div class="aspect-w-16 aspect-h-10 overflow-hidden">
                                        <img src="${plato.linkImg}" alt="${plato.nombrePlato}" 
                                            class="w-full h-48 object-cover" 
                                            onerror="this.src='https://images.unsplash.com/photo-1584824486509-112e4181ff6b?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'; this.onerror=null;" />
                                    </div>
                                    <div class="p-6">
                                        <div class="flex items-start justify-between mb-2">
                                            <h3 class="text-lg font-semibold text-text-primary">${plato.nombrePlato}</h3>
                                            <div class="flex space-x-1">
                                                <span class="text-accent text-sm" title="Vegetariano"></span>
                                            </div>
                                        </div>
                                        <p class="text-text-secondary text-sm mb-4">${plato.descripcionPlato}</p>
                                        <div class="flex items-center justify-between">
                                            <span class="text-xl font-bold text-primary">S/. ${plato.precio}</span>
                                            <button 
                                                class="add-to-cart bg-secondary hover:bg-secondary-600 text-white px-4 py-2 rounded-lg font-medium transition-smooth" 
                                                data-name="${plato.nombrePlato}" 
                                                data-price="${plato.precio}" 
                                                data-image="${plato.linkImg}">
                                                Añadir al Carrito
                                            </button>
                                        </div>
                                    </div>
                                </div>`;
                            });
                        }


                        if (data.principal !== null) {
                            data.principal.forEach(plato => {
                                htmlPrincipal += `
                                <div class="menu-item bg-white rounded-xl shadow-warm hover:shadow-warm-lg transition-medium overflow-hidden" data-dietary="vegetarian">
                                    <div class="aspect-w-16 aspect-h-10 overflow-hidden">
                                        <img src="${plato.linkImg}" alt="${plato.nombrePlato}" 
                                            class="w-full h-48 object-cover" 
                                            onerror="this.src='https://images.unsplash.com/photo-1584824486509-112e4181ff6b?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'; this.onerror=null;" />
                                    </div>
                                    <div class="p-6">
                                        <div class="flex items-start justify-between mb-2">
                                            <h3 class="text-lg font-semibold text-text-primary">${plato.nombrePlato}</h3>
                                            <div class="flex space-x-1">
                                                <span class="text-accent text-sm" title="Vegetariano"></span>
                                            </div>
                                        </div>
                                        <p class="text-text-secondary text-sm mb-4">${plato.descripcionPlato}</p>
                                        <div class="flex items-center justify-between">
                                            <span class="text-xl font-bold text-primary">S/. ${plato.precio}</span>
                                            <button 
                                                class="add-to-cart bg-secondary hover:bg-secondary-600 text-white px-4 py-2 rounded-lg font-medium transition-smooth" 
                                                data-name="${plato.nombrePlato}" 
                                                data-price="${plato.precio}" 
                                                data-image="${plato.linkImg}">
                                                Añadir al Carrito
                                            </button>
                                        </div>
                                    </div>
                                </div>`;
                            });
                        }


                        if (data.postre !== null) {
                            data.postre.forEach(plato => {
                                htmlPostre += `
                                <div class="menu-item bg-white rounded-xl shadow-warm hover:shadow-warm-lg transition-medium overflow-hidden" data-dietary="vegetarian">
                                    <div class="aspect-w-16 aspect-h-10 overflow-hidden">
                                        <img src="${plato.linkImg}" alt="${plato.nombrePlato}" 
                                            class="w-full h-48 object-cover" 
                                            onerror="this.src='https://images.unsplash.com/photo-1584824486509-112e4181ff6b?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'; this.onerror=null;" />
                                    </div>
                                    <div class="p-6">
                                        <div class="flex items-start justify-between mb-2">
                                            <h3 class="text-lg font-semibold text-text-primary">${plato.nombrePlato}</h3>
                                            <div class="flex space-x-1">
                                                <span class="text-accent text-sm" title="Vegetariano"></span>
                                            </div>
                                        </div>
                                        <p class="text-text-secondary text-sm mb-4">${plato.descripcionPlato}</p>
                                        <div class="flex items-center justify-between">
                                            <span class="text-xl font-bold text-primary">S/. ${plato.precio}</span>
                                            <button 
                                                class="add-to-cart bg-secondary hover:bg-secondary-600 text-white px-4 py-2 rounded-lg font-medium transition-smooth" 
                                                data-name="${plato.nombrePlato}" 
                                                data-price="${plato.precio}" 
                                                data-image="${plato.linkImg}">
                                                Añadir al Carrito
                                            </button>
                                        </div>
                                    </div>
                                </div>`;
                            });
                        }


                        if (data.bebida !== null) {
                            data.bebida.forEach(plato => {
                                htmlBebida += `
                    <div class="menu-item bg-white rounded-xl shadow-warm hover:shadow-warm-lg transition-medium overflow-hidden" data-dietary="vegetarian">
                        <div class="aspect-w-16 aspect-h-10 overflow-hidden">
                            <img src="${plato.linkImg}" alt="${plato.nombrePlato}" 
                                class="w-full h-48 object-cover" 
                                onerror="this.src='https://images.unsplash.com/photo-1584824486509-112e4181ff6b?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'; this.onerror=null;" />
                        </div>
                        <div class="p-6">
                            <div class="flex items-start justify-between mb-2">
                                <h3 class="text-lg font-semibold text-text-primary">${plato.nombrePlato}</h3>
                                <div class="flex space-x-1">
                                    <span class="text-accent text-sm" title="Vegetariano"></span>
                                </div>
                            </div>
                            <p class="text-text-secondary text-sm mb-4">${plato.descripcionPlato}</p>
                            <div class="flex items-center justify-between">
                                <span class="text-xl font-bold text-primary">S/. ${plato.precio}</span>
                                <button 
                                    class="add-to-cart bg-secondary hover:bg-secondary-600 text-white px-4 py-2 rounded-lg font-medium transition-smooth" 
                                    data-name="${plato.nombrePlato}" 
                                    data-price="${plato.precio}" 
                                    data-image="${plato.linkImg}">
                                    Añadir al Carrito
                                </button>
                            </div>
                        </div>
                    </div>`;
                            });
                        }


                        contenedorEntradas.innerHTML = htmlEntradas;
                        contenedorPrincipal.innerHTML = htmlPrincipal;
                        contenedorPostres.innerHTML = htmlPostre;
                        contenedorBebidas.innerHTML = htmlBebida;


                        document.getElementById("menu-entradas").innerHTML = htmlEntradas;
                        document.getElementById("menu-principales").innerHTML = htmlPrincipal;
                        document.getElementById("menu-postres").innerHTML = htmlPostre;
                        document.getElementById("menu-bebidas").innerHTML = htmlBebida;

                        // Re-asignar eventos a los nuevos botones de carrito
                        document.querySelectorAll('.add-to-cart').forEach(button => {
                            button.addEventListener('click', function () {
                                currentItem = {
                                    name: this.dataset.name,
                                    price: parseFloat(this.dataset.price),
                                    image: this.dataset.image
                                };
                                document.getElementById('modalItemName').textContent = currentItem.name;
                                document.getElementById('currentQty').textContent = '1';
                                document.getElementById('quantityModal').style.display = 'flex';
                            });
                        });
                        
                         updateCartDisplay();
                    })

                    .catch(err => console.error("Error al cargar menú:", err));
        </script>
    </head>
    <body class="bg-background font-body">
        <!-- Header Navigation -->
        <header class="bg-white shadow-warm-sm sticky top-0 z-40">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between items-center h-16">
                    <!-- Logo -->
                    <div class="flex items-center">
                        <svg class="h-10 w-10 text-primary" viewBox="0 0 40 40" fill="currentColor">
                        <circle cx="20" cy="20" r="18" fill="currentColor" opacity="0.1"/>
                        <path d="M12 16h16v2H12v-2zm0 4h16v2H12v-2zm0 4h12v2H12v-2z" fill="currentColor"/>
                        <circle cx="20" cy="12" r="3" fill="currentColor"/>
                        </svg>
                        <span class="ml-3 text-xl font-sans font-bold text-primary">Sabores Auténticos</span>
                    </div>

                    <!-- Desktop Navigation -->
                    <nav class="hidden md:flex space-x-8">
                        <a href="restaurant_menu.jsp" class="text-primary font-medium border-b-2 border-primary pb-1">Menú</a>
                        <a href="table_reservation.html" class="text-text-secondary hover:text-primary transition-smooth">Reservas</a>
                        <a href="order_tracking.html" class="text-text-secondary hover:text-primary transition-smooth">Seguimiento</a>
                    </nav>

                    <!-- Cart Icon -->
                    <div class="flex items-center">
                        <button id="cartToggle" class="relative p-2 text-text-secondary hover:text-primary transition-smooth">
                            <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4m0 0L7 13m0 0l-1.5 6M7 13l-1.5 6m0 0h9m-9 0h9"/>
                            </svg>
                            <span id="cartCount" class="absolute -top-1 -right-1 bg-secondary text-white text-xs rounded-full h-5 w-5 flex items-center justify-center">0</span>
                        </button>
                    </div>
                </div>
            </div>
        </header>

        <!-- Search Bar -->
        <section class="bg-surface py-4">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="relative max-w-md mx-auto">
                    <input type="text" id="searchInput" placeholder="Buscar platos..." class="w-full pl-10 pr-4 py-3 border border-warm rounded-lg focus:ring-2 focus:ring-primary focus:border-transparent" />
                    <svg class="absolute left-3 top-3.5 h-5 w-5 text-text-secondary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                    </svg>
                </div>
            </div>
        </section>

        <!-- Category Navigation -->
        <section class="bg-white border-b border-warm sticky top-16 z-30">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex overflow-x-auto scrollbar-hide py-4 space-x-8" id="categoryNav">
                    <button class="category-btn active whitespace-nowrap px-4 py-2 rounded-full font-medium transition-smooth" data-category="entrantes">
                        Entrantes
                    </button>
                    <button class="category-btn whitespace-nowrap px-4 py-2 rounded-full font-medium transition-smooth" data-category="principales">
                        Platos Principales
                    </button>
                    <button class="category-btn whitespace-nowrap px-4 py-2 rounded-full font-medium transition-smooth" data-category="postres">
                        Postres
                    </button>
                    <button class="category-btn whitespace-nowrap px-4 py-2 rounded-full font-medium transition-smooth" data-category="bebidas">
                        Bebidas
                    </button>
                </div>
            </div>
        </section>

        <!-- Menu Content -->
        <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <!-- Inicio : Seccion Platos de Entrada -->
            <section id="entrantes" class="menu-section mb-12">
                <h2 class="text-3xl font-sans font-bold text-primary mb-8 flex items-center">
                    <span class="bg-primary text-white rounded-full w-8 h-8 flex items-center justify-center text-lg mr-4">1</span>
                    Platos de Entrada
                </h2>
                <!-- Menu Entrada -->
                <div id="menu-entradas" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"></div>
            </section>
            <!-- Fin : Seccion Platos de Entrada -->
            <!-- Inicio : Platos Principales Section -->
            <section id="principales" class="menu-section mb-12">
                <h2 class="text-3xl font-sans font-bold text-primary mb-8 flex items-center">
                    <span class="bg-primary text-white rounded-full w-8 h-8 flex items-center justify-center text-lg mr-4">2</span>
                    Platos Principales
                </h2>
                <!-- Menu Principal -->
                <div id="menu-principales" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"></div>
            </section>
            <!-- Fin : Platos Principales Section -->
            <!-- Inicio : Postres Section -->
            <section id="postres" class="menu-section mb-12">
                <h2 class="text-3xl font-sans font-bold text-primary mb-8 flex items-center">
                    <span class="bg-primary text-white rounded-full w-8 h-8 flex items-center justify-center text-lg mr-4">3</span>
                    Postres
                </h2>
                <div id="menu-postres" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"></div>
            </section>
            <!-- Fin : Postres Section -->
            <!-- Bebidas Section -->
            <section id="bebidas" class="menu-section mb-12">
                <h2 class="text-3xl font-sans font-bold text-primary mb-8 flex items-center">
                    <span class="bg-primary text-white rounded-full w-8 h-8 flex items-center justify-center text-lg mr-4">4</span>
                    Bebidas
                </h2>
                <div id="menu-bebidas" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6"></div>
            </section>
        </main>

        <!-- Floating Cart Summary -->
        <div id="floatingCart" class="fixed bottom-4 right-4 bg-primary text-white rounded-xl shadow-warm-lg p-4 transform translate-y-full transition-medium z-50" style="display: none;">
            <div class="flex items-center space-x-4">
                <div class="flex-1">
                    <div class="text-sm font-medium">Carrito</div>
                    <div class="text-xs opacity-90" id="cartSummary">0 artículos</div>
                </div>
                <div class="text-lg font-bold" id="cartTotal">S/. 0,00</div>
                <a href="shopping_cart.html" class="bg-white text-primary px-4 py-2 rounded-lg font-medium hover:bg-gray-100 transition-smooth">
                    Ver Carrito
                </a>
            </div>
        </div>

        <!-- Quantity Modal -->
        <div id="quantityModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50" style="display: none;">
            <div class="bg-white rounded-xl p-6 max-w-sm w-full mx-4">
                <h3 class="text-lg font-semibold text-text-primary mb-4" id="modalItemName">Seleccionar Cantidad</h3>
                <div class="flex items-center justify-center space-x-4 mb-6">
                    <button id="decreaseQty" class="w-10 h-10 rounded-full bg-gray-200 flex items-center justify-center text-xl font-bold hover:bg-gray-300 transition-smooth">-</button>
                    <span id="currentQty" class="text-2xl font-bold text-primary">1</span>
                    <button id="increaseQty" class="w-10 h-10 rounded-full bg-gray-200 flex items-center justify-center text-xl font-bold hover:bg-gray-300 transition-smooth">+</button>
                </div>
                <div class="flex space-x-3">
                    <button id="cancelModal" class="flex-1 py-2 px-4 border border-gray-300 rounded-lg font-medium hover:bg-gray-50 transition-smooth">
                        Cancelar
                    </button>
                    <button id="confirmAdd" class="flex-1 py-2 px-4 bg-secondary text-white rounded-lg font-medium hover:bg-secondary-600 transition-smooth">
                        Añadir
                    </button>
                </div>
            </div>
        </div>

        <script>
            // Cart functionality
            let cart = JSON.parse(localStorage.getItem('restaurantCart')) || [];
            let currentItem = null;

            // Update cart display
            function updateCartDisplay() {
                const cartCount = document.getElementById('cartCount');
                const cartSummary = document.getElementById('cartSummary');
                const cartTotal = document.getElementById('cartTotal');
                const floatingCart = document.getElementById('floatingCart');

                const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
                const totalPrice = cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);

                cartCount.textContent = totalItems;
                cartSummary.textContent = `${totalItems} artículo${totalItems !== 1 ? 's' : ''}`;
                cartTotal.textContent = `S/. ${totalPrice.toFixed(2).replace('.', ',')}`;

                if (totalItems > 0) {
                    floatingCart.style.display = 'block';
                    floatingCart.style.transform = 'translateY(0)';
                } else {
                    floatingCart.style.transform = 'translateY(100%)';
                    setTimeout(() => {
                        if (cart.length === 0)
                            floatingCart.style.display = 'none';
                    }, 300);
                }
            }

            // Add to cart functionality
            document.querySelectorAll('.add-to-cart').forEach(button => {
                button.addEventListener('click', function () {
                    currentItem = {
                        name: this.dataset.name,
                        price: parseFloat(this.dataset.price),
                        image: this.dataset.image
                    };

                    document.getElementById('modalItemName').textContent = currentItem.name;
                    document.getElementById('currentQty').textContent = '1';
                    document.getElementById('quantityModal').style.display = 'flex';
                });
            });

            // Quantity modal controls
            let modalQuantity = 1;

            document.getElementById('increaseQty').addEventListener('click', function () {
                modalQuantity++;
                document.getElementById('currentQty').textContent = modalQuantity;
            });

            document.getElementById('decreaseQty').addEventListener('click', function () {
                if (modalQuantity > 1) {
                    modalQuantity--;
                    document.getElementById('currentQty').textContent = modalQuantity;
                }
            });

            document.getElementById('confirmAdd').addEventListener('click', function () {
                const existingItem = cart.find(item => item.name === currentItem.name);

                if (existingItem) {
                    existingItem.quantity += modalQuantity;
                } else {
                    cart.push({
                        ...currentItem,
                        quantity: modalQuantity
                    });
                }

                localStorage.setItem('restaurantCart', JSON.stringify(cart));
                updateCartDisplay();

                document.getElementById('quantityModal').style.display = 'none';
                modalQuantity = 1;
            });

            document.getElementById('cancelModal').addEventListener('click', function () {
                document.getElementById('quantityModal').style.display = 'none';
                modalQuantity = 1;
            });

            // Category navigation
            document.querySelectorAll('.category-btn').forEach(button => {
                button.addEventListener('click', function () {
                    // Remove active class from all buttons
                    document.querySelectorAll('.category-btn').forEach(btn => {
                        btn.classList.remove('active', 'bg-primary', 'text-white');
                        btn.classList.add('text-text-secondary', 'hover:bg-primary-50');
                    });

                    // Add active class to clicked button
                    this.classList.add('active', 'bg-primary', 'text-white');
                    this.classList.remove('text-text-secondary', 'hover:bg-primary-50');

                    // Scroll to section
                    const category = this.dataset.category;
                    document.getElementById(category).scrollIntoView({behavior: 'smooth'});
                });
            });

            // Search functionality
            document.getElementById('searchInput').addEventListener('input', function () {
                const searchTerm = this.value.toLowerCase();
                const menuItems = document.querySelectorAll('.menu-item');

                menuItems.forEach(item => {
                    const itemName = item.querySelector('h3').textContent.toLowerCase();
                    const itemDescription = item.querySelector('p').textContent.toLowerCase();

                    if (itemName.includes(searchTerm) || itemDescription.includes(searchTerm)) {
                        item.style.display = 'block';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });

            // Filter functionality
            document.querySelectorAll('.filter-btn').forEach(button => {
                button.addEventListener('click', function () {
                    const filter = this.dataset.filter;
                    const menuItems = document.querySelectorAll('.menu-item');

                    // Toggle active state
                    this.classList.toggle('bg-primary');
                    this.classList.toggle('text-white');

                    // Apply filters
                    const activeFilters = Array.from(document.querySelectorAll('.filter-btn.bg-primary')).map(btn => btn.dataset.filter);

                    menuItems.forEach(item => {
                        const itemDietary = item.dataset.dietary || '';

                        if (activeFilters.length === 0) {
                            item.style.display = 'block';
                        } else {
                            const hasMatchingFilter = activeFilters.some(filter => itemDietary.includes(filter));
                            item.style.display = hasMatchingFilter ? 'block' : 'none';
                        }
                    });
                });
            });

            // Reset filters
            document.getElementById('resetFilters').addEventListener('click', function () {
                document.querySelectorAll('.filter-btn').forEach(btn => {
                    btn.classList.remove('bg-primary', 'text-white');
                });

                document.querySelectorAll('.menu-item').forEach(item => {
                    item.style.display = 'block';
                });

                document.getElementById('searchInput').value = '';
            });

            // Initialize cart display
            updateCartDisplay();

            // Set default active category
            document.querySelector('.category-btn[data-category="entrantes"]').classList.add('active', 'bg-primary', 'text-white');

        </script>
        <script id="dhws-dataInjector" src="../public/dhws-data-injector.js"></script>
    </body>
</html>
