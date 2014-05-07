.class Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$3;
.super Ljava/lang/Object;
.source "HtcFontStylePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$3;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mIsGetFonts:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->access$302(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;Z)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
