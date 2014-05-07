.class Lcom/android/settings/ISActivity$12;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/ISActivity$12;->this$0:Lcom/android/settings/ISActivity;

    iput-object p2, p0, Lcom/android/settings/ISActivity$12;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ISActivity$12;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ISActivity$12;->val$checkbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->performClick()Z

    :cond_0
    return-void
.end method
