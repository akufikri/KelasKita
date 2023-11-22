defmodule SidebarComponent do
  use Phoenix.Component

  def sidebar(assigns) do
    ~H"""
    <aside
      id="logo-sidebar"
      class="fixed top-0 left-0 z-40 w-72 h-screen pt-20 transition-transform -translate-x-full bg-white border-r border-gray-200 sm:translate-x-0 dark:bg-gray-800 dark:border-gray-700"
      aria-label="Sidebar"
    >
      <div class="h-full px-3 pb-4 overflow-y-auto bg-white dark:bg-gray-800">
        <ul class="space-y-3 font-medium">
          <li>
            <a
              href="#"
              class="flex font-semibold items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
            >
              <i class="fa-solid fa-house-user text-xl text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white">
              </i>
              <span class="ms-5">Halaman utama</span>
            </a>
          </li>
          <hr />
          <li>
            <a
              href="#"
              class="flex font-semibold items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
            >
              <i class="fa-solid fa-book-open-reader text-xl text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white">
              </i>
              <span class="ms-5 ">Tugas Kita</span>
            </a>
          </li>
          <hr />
          <li>
            <a
              href="#"
              class="flex font-semibold items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
            >
              <i class="fa-solid fa-gear text-xl text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white">
              </i>
              <span class="ms-5 ">Pengaturan</span>
            </a>
          </li>
          <hr />
          <li>
            <a
              href="#"
              class="flex font-semibold items-center p-2 text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group"
            >
              <i class="fa-solid text-xl fa-arrow-right-from-bracket text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white">
              </i>
              <span class="ms-5">Keluar</span>
            </a>
          </li>
        </ul>
      </div>
    </aside>
    """
  end
end
