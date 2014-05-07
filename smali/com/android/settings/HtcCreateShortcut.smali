.class public Lcom/android/settings/HtcCreateShortcut;
.super Lcom/android/settings/framework/app/HtcInternalListActivity;
.source "HtcCreateShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcCreateShortcut$1;,
        Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcCreateShortcut"


# instance fields
.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field mIntent:Landroid/content/Intent;

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalListActivity;-><init>()V

    .line 278
    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    return-object v0
.end method

.method protected intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    .line 152
    .local v0, adapter:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
    invoke-virtual {v0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;
    .locals 2
    .parameter "position"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    .line 162
    .local v0, adapter:Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;
    invoke-virtual {v0, p1}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;->itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v1

    return-object v1
.end method

.method public makeListItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_0

    .line 189
    const-string v9, "HtcCreateShortcut"

    const-string v10, "makeListItems() --- BEGIN ---"

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings/HtcCreateShortcut;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 193
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    .line 196
    .local v4, isTetheringSupported:Z
    iget-object v9, p0, Lcom/android/settings/HtcCreateShortcut;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/android/settings/HtcCreateShortcut;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 197
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v10, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v9, v10}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 201
    .local v6, listSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_7

    .line 202
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 204
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_2

    const-string v9, "com.android.settings.Settings$TetherSettingsActivity"

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 206
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_1

    .line 207
    const-string v9, "HtcCreateShortcut"

    const-string v10, "[NO Tethering] remove com.android.settings.Settings$TetherSettingsActivity"

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_2
    new-instance v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v2}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 215
    .local v2, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 218
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v9, :cond_5

    .line 219
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->icon:I

    iput v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 224
    :goto_2
    const-class v9, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 225
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcApplicationsFeatureFlags;->getAppsTitleResId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/HtcCreateShortcut;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 230
    :goto_3
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 231
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_3

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 232
    :cond_3
    iget-object v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-nez v9, :cond_4

    if-eqz v0, :cond_4

    .line 233
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 236
    :cond_4
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 238
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_5
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_2

    .line 227
    :cond_6
    iget-object v9, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v2, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_3

    .line 241
    .end local v2           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_7
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_8

    .line 242
    const-string v9, "HtcCreateShortcut"

    const-string v10, "makeListItems() --- END ---"

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_8
    return-object v8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 71
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->requestWindowFeature(I)Z

    .line 72
    const v3, 0x7f0c0c2e

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->setTitle(I)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    .line 78
    const-string v3, "HtcCreateShortcut"

    const-string v4, "onCreate() --- BEGIN ---"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    invoke-virtual {p0, v5}, Lcom/android/settings/HtcCreateShortcut;->setProgressBarIndeterminateVisibility(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->onSetContentView()V

    .line 86
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mIntent:Landroid/content/Intent;

    .line 87
    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    new-instance v3, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    iget-object v4, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    invoke-direct {v3, p0, p0, v4}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;-><init>(Lcom/android/settings/HtcCreateShortcut;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    .line 90
    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 93
    .local v1, lv:Lcom/htc/widget/HtcListView;
    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 94
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, empty:Landroid/view/View;
    const/4 v2, 0x0

    .line 96
    .local v2, target:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 97
    check-cast v2, Landroid/widget/TextView;

    .line 98
    if-eqz v2, :cond_1

    .line 99
    const v3, 0x7f0c0a44

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 101
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCreateShortcut;->setProgressBarIndeterminateVisibility(Z)V

    .line 103
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    .line 104
    const-string v3, "HtcCreateShortcut"

    const-string v4, "onCreate() --- END ---"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 120
    invoke-virtual {p0, p3}, Lcom/android/settings/HtcCreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    .line 121
    .local v3, shortcutIntent:Landroid/content/Intent;
    const/high16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p3}, Lcom/android/settings/HtcCreateShortcut;->itemForPosition(I)Lcom/htc/preference/HtcPreferenceActivity$Header;

    move-result-object v0

    .line 126
    .local v0, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    .local v2, res:Landroid/content/res/Resources;
    const-string v5, "android.intent.extra.shortcut.ICON"

    iget v4, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v5, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 141
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/HtcCreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/HtcCreateShortcut;->finish()V

    .line 143
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "queryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/HtcCreateShortcut;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onSetContentView()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    .line 249
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "HtcCreateShortcut"

    const-string v3, "setListAdapter() --- BEGIN ---"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    if-nez v2, :cond_2

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    .line 257
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 258
    .local v1, nNum:I
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 259
    const-string v2, "HtcCreateShortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[nNum] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0           #i:I
    .end local v1           #nNum:I
    :cond_2
    new-instance v2, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;

    iget-object v3, p0, Lcom/android/settings/HtcCreateShortcut;->mHeaders:Ljava/util/List;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/settings/HtcCreateShortcut$HeaderAdapter;-><init>(Lcom/android/settings/HtcCreateShortcut;Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v2}, Lcom/android/settings/framework/app/HtcInternalListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_3

    .line 271
    const-string v2, "HtcCreateShortcut"

    const-string v3, "setListAdapter() --- END ---"

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_3
    return-void
.end method
