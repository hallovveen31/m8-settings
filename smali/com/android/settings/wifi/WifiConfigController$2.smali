.class Lcom/android/settings/wifi/WifiConfigController$2;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902b9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$000(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->performClick()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902b5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$100(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->performClick()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902bd

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->performClick()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902b1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->performClick()Z

    goto :goto_0
.end method
