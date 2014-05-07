.class Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$2;
.super Ljava/lang/Object;
.source "HtcAbsMutableListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$2;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$2;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mIsFirstBound:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->access$102(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;Z)Z

    .line 257
    return-void
.end method
