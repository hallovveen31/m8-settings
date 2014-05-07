.class public abstract Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;
.super Landroid/app/LauncherActivity;
.source "HtcAbsCreateShortcut.java"


# instance fields
.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendIconToShortcutIntent(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 53
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v1

    iget-object v0, v1, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 57
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const-string v1, "android.intent.extra.shortcut.ICON"

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 31
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 33
    new-instance v3, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v3, p0, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 36
    iget-object v3, p0, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 38
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 39
    .local v2, mText:Lcom/htc/widget/ActionBarText;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/shortcut/HtcAbsCreateShortcut;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 40
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 42
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 44
    .end local v1           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v2           #mText:Lcom/htc/widget/ActionBarText;
    :cond_0
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method
