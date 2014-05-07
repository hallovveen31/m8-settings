.class Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 1586
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1587
    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1588
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1621
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    const-string v0, "[SettingsObserver] onChange() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 1627
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    const-string v0, "[SettingsObserver] onChange() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1630
    :cond_1
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1591
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1592
    const-string v1, "[SettingsObserver] startObserving() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1595
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1597
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1599
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1602
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1603
    const-string v1, "[SettingsObserver] startObserving() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1605
    :cond_1
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 1608
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    const-string v0, "[SettingsObserver] stopObserving() --- BEGIN ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1614
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    const-string v0, "[SettingsObserver] stopObserving() --- END ---"

    #calls: Lcom/android/settings/widget/SettingsAppWidgetProvider;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500(Ljava/lang/String;)V

    .line 1617
    :cond_1
    return-void
.end method
