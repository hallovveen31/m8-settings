.class public Lcom/android/settings/wifi/WISPrAccountEditor;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "WISPrAccountEditor.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


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

    .prologue
    .line 35
    const-class v0, Lcom/android/settings/wifi/WISPrAccountEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WISPrAccountEditor;->TAG:Ljava/lang/String;

    .line 53
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

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mId:Z

    return-void
.end method

.method private ValidateAndSave()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 185
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, password:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getValidInput()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 205
    :goto_0
    return v4

    .line 191
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "nickname"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "loginname"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-boolean v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v4, :cond_2

    .line 196
    const v4, 0x7f0c00ee

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WISPrAccountEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    const-string v4, "password"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 202
    :cond_2
    const-string v4, "password"

    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public static decodePwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    rsub-int/lit8 v0, v6, 0x4

    .line 259
    .local v0, appendingLen:I
    const/4 v6, 0x4

    if-ge v0, v6, :cond_0

    .line 260
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    .end local v3           #i:I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 265
    .local v1, encodeStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 266
    .end local v1           #encodeStr:Ljava/lang/String;
    .local v2, encodeStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 268
    .local v4, srcArray:[C
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 269
    aget-char v5, v4, v3

    .line 270
    .local v5, tmpChar:C
    add-int/lit8 v6, v3, 0x1

    aget-char v6, v4, v6

    aput-char v6, v4, v3

    .line 271
    add-int/lit8 v6, v3, 0x1

    aput-char v5, v4, v6

    .line 268
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 273
    .end local v5           #tmpChar:C
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method public static encodePwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"

    .prologue
    .line 237
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 253
    :cond_0
    :goto_0
    return-object v1

    .line 239
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 241
    .local v5, srcArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 242
    aget-char v6, v5, v3

    .line 243
    .local v6, tmpChar:C
    add-int/lit8 v7, v3, 0x1

    aget-char v7, v5, v7

    aput-char v7, v5, v3

    .line 244
    add-int/lit8 v7, v3, 0x1

    aput-char v6, v5, v7

    .line 241
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 246
    .end local v6           #tmpChar:C
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    .line 247
    .local v2, encodeStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 248
    .local v0, base64Str:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 249
    .end local v0           #base64Str:Ljava/lang/String;
    .local v1, base64Str:Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 250
    .local v4, index:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 251
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getValidInput()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, password:Ljava/lang/String;
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

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 177
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 283
    const v0, 0x7f0c0d99

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    const v5, 0x7f06005f

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->addPreferencesFromResource(I)V

    .line 63
    const-string v5, "key_wispr_account"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    .line 64
    const-string v5, "key_wispr_username"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    .line 65
    const-string v5, "key_wispr_password"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WISPrAccountEditor;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    .line 66
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 67
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 68
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v5, p0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 72
    const-string v5, "mode"

    invoke-virtual {v0, v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, mode:Ljava/lang/String;
    const-string v5, "index"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 74
    .local v1, index:Ljava/lang/Long;
    if-eqz v3, :cond_1

    move v8, v6

    :goto_0
    if-eqz v1, :cond_2

    move v5, v6

    :goto_1
    and-int/2addr v5, v8

    if-eqz v5, :cond_0

    .line 75
    iput-boolean v6, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://wispr/account/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, uriStr:Ljava/lang/String;
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

    .line 78
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    .line 79
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    const v8, 0x7f0c00ee

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WISPrAccountEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    .line 82
    .local v2, manager:Landroid/app/LoaderManager;
    invoke-virtual {v2, v7, v10, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 83
    invoke-virtual {v2, v7}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v5

    check-cast v5, Landroid/content/CursorLoader;

    iput-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mProfileLoader:Landroid/content/CursorLoader;

    .line 84
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mProfileLoader:Landroid/content/CursorLoader;

    iget-object v7, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 87
    .end local v1           #index:Ljava/lang/Long;
    .end local v2           #manager:Landroid/app/LoaderManager;
    .end local v3           #mode:Ljava/lang/String;
    .end local v4           #uriStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WISPrAccountEditor;->setHasOptionsMenu(Z)V

    .line 88
    return-void

    .restart local v1       #index:Ljava/lang/Long;
    .restart local v3       #mode:Ljava/lang/String;
    :cond_1
    move v8, v7

    .line 74
    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1
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
    const/4 v5, 0x0

    .line 114
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

    .line 115
    .local v4, selection:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/WISPrProvider;->sWISPrAccountURI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/wifi/WISPrAccountEditor;->sProjection:[Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 139
    const/4 v0, 0x1

    const v1, 0x7f0c00a9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x2

    const v1, 0x7f0c00e6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 150
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 126
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "nickname"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, profile:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    const-string v2, "loginname"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, username:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    .end local v0           #profile:Ljava/lang/String;
    .end local v1           #username:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WISPrAccountEditor;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 121
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 156
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->ValidateAndSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mSavePressed:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 209
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 233
    .end local p2
    :cond_0
    :goto_0
    return v6

    .line 213
    .restart local p2
    :cond_1
    const-string v4, "key_wispr_account"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mAccountName:Lcom/htc/preference/HtcEditTextPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    .restart local p2
    :cond_2
    const-string v4, "key_wispr_username"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 218
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mUsername:Lcom/htc/preference/HtcEditTextPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    .restart local p2
    :cond_3
    const-string v4, "key_wispr_password"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    iget-object v5, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 223
    const-string v3, ""

    .local v3, summary:Ljava/lang/String;
    move-object v2, p2

    .line 224
    check-cast v2, Ljava/lang/String;

    .line 225
    .local v2, password:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 227
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    .end local v0           #i:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mPassword:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mProfileLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mCursor:Landroid/database/Cursor;

    .line 96
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 104
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WISPrAccountEditor;->mSavePressed:Z

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lcom/android/settings/wifi/WISPrAccountEditor;->TAG:Ljava/lang/String;

    const-string v2, "home key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrAccountEditor;->ValidateAndSave()Z

    .line 109
    :cond_0
    return-void
.end method
