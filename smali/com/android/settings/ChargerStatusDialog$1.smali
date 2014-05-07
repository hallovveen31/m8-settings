.class Lcom/android/settings/ChargerStatusDialog$1;
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

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/settings/ChargerStatusDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/ChargerStatusDialog$1;->this$0:Lcom/android/settings/ChargerStatusDialog;

    iput p2, p0, Lcom/android/settings/ChargerStatusDialog$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/settings/ChargerStatusDialog$1;->val$type:I

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog$1;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/ChargerStatusDialog;->access$100(Lcom/android/settings/ChargerStatusDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "charger_not_support_dialog_dont_show"

    iget-object v2, p0, Lcom/android/settings/ChargerStatusDialog$1;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v2}, Lcom/android/settings/ChargerStatusDialog;->access$000(Lcom/android/settings/ChargerStatusDialog;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog$1;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/ChargerStatusDialog;->access$100(Lcom/android/settings/ChargerStatusDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog$1;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/ChargerStatusDialog;->access$100(Lcom/android/settings/ChargerStatusDialog;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "charger_current_low_dialog_dont_show"

    iget-object v2, p0, Lcom/android/settings/ChargerStatusDialog$1;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v2}, Lcom/android/settings/ChargerStatusDialog;->access$000(Lcom/android/settings/ChargerStatusDialog;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
