.class Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;
.super Ljava/lang/Object;
.source "HtcMiniSpecialWizardActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->showSetupOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$000(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$2;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    #getter for: Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->access$000(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$HtcItemContainerAdapter;->onItemClick(I)V

    .line 261
    :cond_0
    return-void
.end method
