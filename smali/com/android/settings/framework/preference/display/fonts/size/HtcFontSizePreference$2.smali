.class Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;
.super Ljava/lang/Object;
.source "HtcFontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->setValueIndex(I)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.45"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;->this$0:Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;->access$000(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0164

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0165

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040258

    new-instance v2, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2$1;-><init>(Lcom/android/settings/framework/preference/display/fonts/size/HtcFontSizePreference$2;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
