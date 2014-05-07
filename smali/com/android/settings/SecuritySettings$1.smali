.class Lcom/android/settings/SecuritySettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 172
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 177
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 188
    :cond_3
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-eqz v1, :cond_6

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "slot1_is_checked"

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    .local v0, mainSlotEnable:Z
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 191
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 198
    .end local v0           #mainSlotEnable:Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 194
    :cond_6
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 195
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 6
    .parameter "serviceState"
    .parameter "phoneType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 206
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "slot1_is_checked"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 210
    .local v0, mainSlotEnable:Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "slot2_is_checked"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 212
    .local v1, subSlotEnable:Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 214
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 223
    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_8

    .line 224
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 225
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 227
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 228
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 230
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0

    .line 236
    :cond_8
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v2

    if-nez v2, :cond_9

    .line 237
    invoke-static {}, Lcom/android/settings/SecuritySettings;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "set true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 240
    :cond_9
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v2

    if-nez v2, :cond_a

    .line 241
    invoke-static {}, Lcom/android/settings/SecuritySettings;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "set true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->subSimLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 244
    :cond_a
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->simNetworkLockCat:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Lcom/htc/preference/HtcPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_0
.end method
