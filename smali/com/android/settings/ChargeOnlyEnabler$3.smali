.class Lcom/android/settings/ChargeOnlyEnabler$3;
.super Landroid/os/Handler;
.source "ChargeOnlyEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChargeOnlyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChargeOnlyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargeOnlyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const v5, 0x7f0c0555

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "SmartNS_ChargeOnly_Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ChargeOnlyEnabler$3;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    iget-object v0, v0, Lcom/android/settings/ChargeOnlyEnabler;->mChargeOnlyEnabler:Lcom/htc/preference/HtcSwitchPreference;

    const v1, 0x7f0c0512

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
