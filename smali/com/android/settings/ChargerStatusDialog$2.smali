.class Lcom/android/settings/ChargerStatusDialog$2;
.super Ljava/lang/Object;
.source "ChargerStatusDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChargerStatusDialog;->showChargerDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChargerStatusDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargerStatusDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/ChargerStatusDialog$2;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog$2;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/ChargerStatusDialog;->access$000(Lcom/android/settings/ChargerStatusDialog;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog$2;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/android/settings/ChargerStatusDialog;->access$000(Lcom/android/settings/ChargerStatusDialog;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    .line 114
    :cond_0
    return-void
.end method
