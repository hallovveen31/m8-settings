.class Lcom/android/settings/EditPinPreference$1;
.super Ljava/lang/Object;
.source "EditPinPreference.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EditPinPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EditPinPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/EditPinPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/EditPinPreference$1;->this$0:Lcom/android/settings/EditPinPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/EditPinPreference$1;->this$0:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/EditPinPreference$1;->this$0:Lcom/android/settings/EditPinPreference;

    const/4 v2, -0x1

    #setter for: Lcom/htc/preference/HtcDialogPreference;->mWhichButtonClicked:I
    invoke-static {v1, v2}, Lcom/android/settings/EditPinPreference;->access$002(Lcom/android/settings/EditPinPreference;I)I

    iget-object v1, p0, Lcom/android/settings/EditPinPreference$1;->this$0:Lcom/android/settings/EditPinPreference;

    #getter for: Lcom/htc/preference/HtcDialogPreference;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings/EditPinPreference;->access$100(Lcom/android/settings/EditPinPreference;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
