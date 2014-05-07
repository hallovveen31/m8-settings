.class Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;
.super Lcom/htc/preference/HtcPreference;
.source "WifiOffloadSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiOffloadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHtcPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiOffloadSettingsFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    .line 105
    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget v2, v2, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPreTapResId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->setSummary(I)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->this$0:Lcom/android/settings/wifi/WifiOffloadSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiOffloadSettingsFragment;->mPrefTapNetwork:Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadSettingsFragment$MyHtcPreference;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 115
    .local v0, title:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 116
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .end local v0           #title:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v0       #title:Landroid/view/View;
    :cond_1
    const-string v1, "WifiOffloadSettingsFragment"

    const-string v2, "onBindView, getTitleView == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
