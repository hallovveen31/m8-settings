.class Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;
.super Landroid/os/AsyncTask;
.source "HtcFontStylePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFontsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;-><init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    #getter for: Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->access$100(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->initializeFontStyle(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    #calls: Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->initAdapter()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->access$200(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getCurrentFontStyleIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;->this$0:Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    sget-object v2, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleEntries:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
