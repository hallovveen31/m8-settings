.class public Lcom/android/settings/wifi/WISPrAccountEditor;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "WISPrAccountEditor.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;",
        "Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_WISPR_ACCOUNT:Ljava/lang/String; = "key_wispr_account"

.field private static final KEY_WISPR_PASSWORD:Ljava/lang/String; = "key_wispr_password"

.field private static final KEY_WISPR_USERNAME:Ljava/lang/String; = "key_wispr_username"

.field private static final MENU_ID_DELETE:I = 0x2

.field private static final MENU_ID_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sProjection:[Ljava/lang/String;


# instance fields
.field private mAccountName:Lcom/htc/preference/HtcEditTextPreference;

.field private mCursor:Landroid/database/Cursor;

.field private mEditMode:Z

.field private mId:Z

.field private mPassword:Lcom/htc/preference/HtcEditTextPreference;

.field mProfileLoader:Landroid/content/CursorLoader;

.field private mSavePressed:Z

.field private mUri:Landroid/net/Uri;

.field private mUsername:Lcom/htc/preference/HtcEditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/settings/wifi/WISPrAccountEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WISPrAccountEditor;->TAG:Ljava/lang/String;

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

    sput-object v0, Lcom/android/settings/wifi/WISPrAccountEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mId:Z

    return-void
.end method

.method private ValidateAndSave()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getValidInput()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "nickname"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "loginname"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0c00ee

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "password"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "password"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public static decodePwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    rsub-int/lit8 v0, v6, 0x4

    const/4 v6, 0x4

    if-ge v0, v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v3, 0x0

    :goto_1
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    aget-char v5, v4, v3

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v4, v6

    aput-char v6, v4, v3

    add-int/lit8 v6, v3, 0x1

    aput-char v5, v4, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static encodePwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    aget-char v6, v5, v3

    add-int/lit8 v7, v3, 0x1

    aget-char v7, v5, v7

    aput-char v7, v5, v3

    add-int/lit8 v7, v3, 0x1

    aput-char v6, v5, v7

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getValidInput()Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0d99

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const v5, 0x7f06005f

    invoke-virtual {p0, v5}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v5, "key_wispr_account"

    invoke-virtual {p0, v5}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    const-string v5, "key_wispr_username"

    invoke-virtual {p0, v5}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    const-string v5, "key_wispr_password"

    invoke-virtual {p0, v5}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "mode"

    invoke-virtual {v0, v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "index"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v3, :cond_1

    move v8, v6

    :goto_0
    if-eqz v1, :cond_2

    move v5, v6

    :goto_1
    and-int/2addr v5, v8

    if-eqz v5, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://wispr/account/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WISPrAccountEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uriStr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    const v8, 0x7f0c00ee

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v7, v10, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {v2, v7}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v5

    check-cast v5, Landroid/content/CursorLoader;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mProfileLoader:Landroid/content/CursorLoader;

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mProfileLoader:Landroid/content/CursorLoader;

    iget-object v7, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_1
    move v8, v7

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "where _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/wifi/WISPrAccountEditor;->sProjection:[Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0c00a9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const v1, 0x7f0c00e6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "nickname"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "loginname"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WISPrAccountEditor;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->ValidateAndSave()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mSavePressed:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v4, "key_wispr_account"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v4, "key_wispr_username"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v4, "key_wispr_password"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v3, ""

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mProfileLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mSavePressed:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WISPrAccountEditor;->TAG:Ljava/lang/String;

    const-string v2, "home key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->ValidateAndSave()Z

    :cond_0
    return-void
.end method
