.class Lcom/android/settings/SmartNSEnabler$4$2;
.super Ljava/lang/Object;
.source "SmartNSEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSEnabler$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SmartNSEnabler$4;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNSEnabler$4;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iput p2, p0, Lcom/android/settings/SmartNSEnabler$4$2;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SmartNSEnabler$4$2;->val$selected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/SmartNSEnabler$WarningDialog;

    iget-object v1, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v1, v1, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SmartNSEnabler$WarningDialog;-><init>(Lcom/android/settings/SmartNSEnabler;Lcom/android/settings/SmartNSEnabler$1;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "usb_tethering_auto_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SmartNSEnabler$4$2;->val$selected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sns_pre_type"

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sns_position"

    iget v2, p0, Lcom/android/settings/SmartNSEnabler$4$2;->val$selected:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sns_type"

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/SmartNSEnabler$4$2;->val$selected:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    iget-object v1, v0, Lcom/android/settings/SmartNSEnabler;->mSNSEnabler:Lcom/htc/preference/HtcPreference;

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mNameArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$1500(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/SmartNSEnabler$4$2;->val$selected:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->list:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$1600(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$000(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "usb_tethering_auto_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->closeAll()V

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isApnAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->enableTetheringWithApn()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->enableTethering()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->enableInternetPassThrough()V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->enableInternetConnectionMode()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->enablePCModem()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$2;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SmartNSEnabler;->enableMirrorLink()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
