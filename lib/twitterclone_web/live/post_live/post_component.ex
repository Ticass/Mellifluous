defmodule TwittercloneWeb.PostLive.PostComponent do
  use TwittercloneWeb, :live_component

  def render(assigns) do
  ~L"""
    <div id="post-<%= @post.id %>" class="post">
    <div class="row">
    <div class="column column-10">
    <div class="post-avatar"></div>
    </div>
    <div class="column column-90 post-body">
    <b>@<%= @post.username %> </b>
    <br />
    <%= @post.body %>
    </div>
    </div>

    <div class="row">
    <div class="column">
    <i class="far fa-heart"></i> <%= @post.likes_count %>
    </div>
    </div>
    </div>
    """
    end
end
