.class public Lcom/android/settings/framework/app/InternalListActivity;
.super Landroid/app/ListActivity;
.source "InternalListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityManager;->applyGuestMode(Landroid/app/Activity;)Z

    .line 15
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method
