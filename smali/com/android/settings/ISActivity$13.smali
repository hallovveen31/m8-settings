.class Lcom/android/settings/ISActivity$13;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity;->showWarningDialog_ACG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;

.field final synthetic val$checkbox:Lcom/htc/widget/HtcCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;Lcom/htc/widget/HtcCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    iput-object p2, p0, Lcom/android/settings/ISActivity$13;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    iget-object v2, v2, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v3, "internet_sharing_acg"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "once_acg"

    iget-object v3, p0, Lcom/android/settings/ISActivity$13;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "NetSharing_ISActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkbox is checked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ISActivity$13;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v4}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/ISActivity$13;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method
