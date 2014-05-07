.class public Lcom/android/settings/wifi/WISPrAccountList;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "WISPrAccountList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;"
    }
.end annotation


# static fields
.field private static final KEY_WHISPER_ADD_ACCOUNT:Ljava/lang/String; = "key_whisper_add_account"

.field private static final MENU_ID_DELETE:I = 0x1

.field private static final MENU_ID_EDIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WISPrAccountList"

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field mAccountLoader:Landroid/content/CursorLoader;

.field mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mId:Ljava/lang/Long;

.field private maps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "loginname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/WISPrAccountList;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private launchEditMode()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 193
    const v0, 0x7f0c0d99

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WISPrAccountList;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 58
    .local v0, manager:Landroid/app/LoaderManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 59
    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    check-cast v1, Landroid/content/CursorLoader;

    iput-object v1, p0, Lcom/android/settings/wifi/WISPrAccountList;->mAccountLoader:Landroid/content/CursorLoader;

    .line 60
    iget-object v1, p0, Lcom/android/settings/wifi/WISPrAccountList;->mAccountLoader:Landroid/content/CursorLoader;

    sget-object v2, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WISPrAccountList;->registerForContextMenu(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 152
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 140
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://wispr/account/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountList;->mId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, UriStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 142
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0           #UriStr:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "mode"

    const-string v4, "edit"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "index"

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountList;->mId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WISPrAccountList;->startAccountEditor(Landroid/os/Bundle;)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    move-object v4, p3

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v4, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreference;

    .line 118
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 120
    .local v2, position:I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 121
    .local v0, count:I
    add-int/lit8 v4, v0, -0x1

    if-eq v2, v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountList;->maps:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 123
    .local v1, index:Ljava/lang/Long;
    iput-object v1, p0, Lcom/android/settings/wifi/WISPrAccountList;->mId:Ljava/lang/Long;

    .line 124
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 125
    const/4 v4, 0x2

    const v5, 0x7f0c1004

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 126
    const/4 v4, 0x1

    const v5, 0x7f0c00e6

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 129
    .end local v1           #index:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/wifi/WISPrAccountList;->sProjection:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    .line 83
    .local v6, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 84
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, i:I
    iget-object v7, p0, Lcom/android/settings/wifi/WISPrAccountList;->maps:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    .line 88
    iget-object v7, p0, Lcom/android/settings/wifi/WISPrAccountList;->maps:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 90
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wifi/WISPrAccountList;->maps:Ljava/util/HashMap;

    .line 92
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    const-string v7, "_id"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 94
    .local v2, id:J
    iget-object v7, p0, Lcom/android/settings/wifi/WISPrAccountList;->maps:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v7, "nickname"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, name:Ljava/lang/String;
    const-string v7, "WISPrAccountList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v5, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 99
    .local v5, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v5}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "id"

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    invoke-virtual {v6, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 103
    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    goto :goto_0

    .line 106
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #id:J
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    const v7, 0x7f06005e

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WISPrAccountList;->addPreferencesFromResource(I)V

    .line 107
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WISPrAccountList;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getOrder()I

    move-result v2

    .line 159
    .local v2, order:I
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->peekExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 161
    .local v3, value:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 162
    const-string v4, "id"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 163
    .local v1, id:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, extras:Landroid/os/Bundle;
    const-string v4, "mode"

    const-string v5, "edit"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v4, "index"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WISPrAccountList;->startAccountEditor(Landroid/os/Bundle;)V

    .line 171
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 176
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, key:Ljava/lang/String;
    const-string v1, "key_whisper_add_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WISPrAccountList;->startAccountEditor(Landroid/os/Bundle;)V

    .line 183
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 181
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WISPrAccountList;->mAccountLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WISPrAccountList;->mCursor:Landroid/database/Cursor;

    .line 68
    return-void
.end method

.method public startAccountEditor(Landroid/os/Bundle;)V
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/WISPrAccountEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c07e1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const-class v0, Lcom/android/settings/wifi/WISPrAccountEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v4}, Lcom/android/settings/wifi/WISPrAccountList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method updateUI()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
