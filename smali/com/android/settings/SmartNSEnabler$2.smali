.class Lcom/android/settings/SmartNSEnabler$2;
.super Landroid/os/Handler;
.source "SmartNSEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmartNSEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNSEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNSEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const v1, 0x7f0c050e

    const/4 v8, 0x6

    const v7, 0x7f0c0513

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "SmartNS_Enabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "runATS"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$102(Z)Z

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "tethering_blocked"

    invoke-static {v2, v5, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$302(Z)Z

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "mdm_Tethering"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "mdm_usb"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$502(Z)Z

    const-string v2, "SmartNS_Enabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$100()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$100()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$300()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_2
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x2040260

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c074f

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2

    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c054a

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2

    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_3
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_6
    const v1, 0x7f0c050d

    goto :goto_3

    :pswitch_7
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-eqz v2, :cond_7

    const v0, 0x7f0c054d

    :goto_4
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_7
    const v0, 0x7f0c054b

    goto :goto_4

    :pswitch_8
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_9
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0746

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_a
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c054c

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_b
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_c
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_d
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c054d

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_e
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :pswitch_f
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :pswitch_10
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c052c

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_11
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "sns_type"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0550

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_12
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sns_type"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c054e

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto/16 :goto_2

    :pswitch_13
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :pswitch_14
    iget-object v2, p0, Lcom/android/settings/SmartNSEnabler$2;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v2, v2, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
