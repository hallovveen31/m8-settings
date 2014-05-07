.class Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$1;
.super Ljava/lang/Object;
.source "HtcAbsMutableListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 230
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    #calls: Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->setClickedDialogEntryIndex(I)V
    invoke-static {v0, p2}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->access$000(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;I)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 244
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    return-void
.end method
