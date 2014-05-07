.class public Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcFontStylePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mIsGetFonts:Z

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mListView:Lcom/htc/widget/HtcListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f0c0b17

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->DEBUG:Z

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListAdapter:Landroid/widget/ListAdapter;

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListView:Lcom/htc/widget/HtcListView;

    iput-boolean v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mIsGetFonts:Z

    new-instance v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;-><init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->TAG:Ljava/lang/String;

    const-string v1, "-HtcFontStylePreference()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(I)V

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    const v0, 0x7f0c0b1a

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    invoke-static {v2}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->setReloadFontStyle(Z)V

    new-instance v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$LoadFontsTask;-><init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->initAdapter()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mIsGetFonts:Z

    return p1
.end method

.method private initAdapter()V
    .locals 6

    new-instance v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$2;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f04007d

    const v4, 0x1020014

    sget-object v5, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleEntries:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$2;-><init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->item_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsGetFonts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mIsGetFonts:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mIsGetFonts:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSupportMoppoFontStore(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "cn.moppo.fontstore/.activity.MainActivity"

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mIsGetFonts:Z

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0b1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->getCurrentFontStyleIndex(I)I

    move-result v0

    sget-object v3, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStyleManager;->mHtcFontStyleEntries:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p1, v1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0c0b18

    new-instance v1, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference$3;-><init>(Lcom/android/settings/framework/preference/display/fonts/style/HtcFontStylePreference;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method
