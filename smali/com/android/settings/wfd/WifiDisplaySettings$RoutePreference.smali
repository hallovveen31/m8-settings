.class Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.super Lcom/htc/preference/HtcPreference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "route"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 663
    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 665
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 666
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 667
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 668
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    .line 669
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 671
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const v0, 0x7f0c0d06

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    .line 688
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 689
    return-void

    .line 674
    :cond_0
    const v0, 0x7f0c0d07

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    goto :goto_0

    .line 680
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 681
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 682
    const v0, 0x7f0c0d09

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 684
    :cond_3
    const v0, 0x7f0c0d0a

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    #calls: Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 694
    const/4 v0, 0x1

    return v0
.end method
