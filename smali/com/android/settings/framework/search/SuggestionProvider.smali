.class public Lcom/android/settings/framework/search/SuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;,
        Lcom/android/settings/framework/search/SuggestionProvider$Target;
    }
.end annotation


# static fields
.field private static final COLUMNS_TYPE_1:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field static sSearchTarget:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/search/SuggestionProvider$Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/framework/search/SuggestionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->COLUMNS_TYPE_1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 369
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->COLUMNS_TYPE_1:[Ljava/lang/String;

    return-object v0
.end method

.method private doSearch(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .parameter "query"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/search/SuggestionProvider$Target;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/search/SuggestionProvider$Target;>;"
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    :cond_0
    return-object v1

    .line 357
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 359
    const/4 v0, 0x0

    .local v0, index:I
    sget-object v3, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 360
    sget-object v3, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    iget-object v3, v3, Lcom/android/settings/framework/search/SuggestionProvider$Target;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    sget-object v3, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private makeEmptyCursor()Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;-><init>(Lcom/android/settings/framework/search/SuggestionProvider;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 305
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 310
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public loadResources()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/search/SuggestionProvider$1;-><init>(Lcom/android/settings/framework/search/SuggestionProvider;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public loadResourcesInBackground()V
    .locals 5

    .prologue
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0d2c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 136
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0cb4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 144
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c011e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 154
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x20402b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$WirelessSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 162
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0587

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.htc.personalize.ACTION_HOMEPERSONALIZE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 170
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c010e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 179
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0de4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 187
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0e12

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 195
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0e4e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 199
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 203
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0829

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$Power"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 211
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0f49

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$ManageApplicationsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 219
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0175

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 234
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 236
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0563

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.android.psclient"

    const-string v4, "com.htc.android.psclient.RestoreUsbSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Setting_Type"

    const-string v4, "USB"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 242
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 244
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0579

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 250
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 252
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c02e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$InputMethodAndLanguageSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 258
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 260
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0312

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 268
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0c3d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DateTimeSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 274
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 276
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c105b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$AccessibilitySettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 282
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 284
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c02e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 288
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DevelopmentSettingsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 292
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v1, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .end local v1           #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0f0e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/framework/search/SuggestionProvider$Target;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v1       #target:Lcom/android/settings/framework/search/SuggestionProvider$Target;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$HtcAboutPhoneActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setIntent(Landroid/content/Intent;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->setSearchKeyword(Ljava/lang/String;)Lcom/android/settings/framework/search/SuggestionProvider$Target;

    .line 300
    sget-object v2, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->loadResources()V

    .line 97
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/android/settings/framework/search/SuggestionProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->loadResources()V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, query:Ljava/lang/String;
    const-string v4, "limit"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, paramter:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    .local v0, limit:I
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/android/settings/framework/search/SuggestionProvider;->makeEmptyCursor()Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;

    move-result-object v4

    .line 344
    :goto_1
    return-object v4

    .line 336
    .end local v0           #limit:I
    :cond_0
    const v0, 0x7fffffff

    .restart local v0       #limit:I
    goto :goto_0

    .line 343
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/android/settings/framework/search/SuggestionProvider;->doSearch(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 344
    .local v3, queryResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/search/SuggestionProvider$Target;>;"
    new-instance v4, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/framework/search/SuggestionProvider$SuggestionsCursor;-><init>(Lcom/android/settings/framework/search/SuggestionProvider;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
