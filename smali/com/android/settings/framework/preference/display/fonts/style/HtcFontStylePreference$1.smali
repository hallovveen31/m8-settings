.class Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;
.super Ljava/lang/Object;
.source "HtcFontStylePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;
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

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->access$100(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->applyFontStyle(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
