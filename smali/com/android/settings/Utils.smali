.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DISABLED_ALPHA:F = 0.4f

.field private static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field private static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings.summary"

.field private static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c12be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$1;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7

    const/4 v5, 0x1

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v4, v1, :cond_1

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1

    const/high16 v0, 0x200

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    move-object v0, p1

    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "status"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_3

    const v5, 0x7f0c0b86

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-lez v1, :cond_0

    if-ne v1, v7, :cond_1

    const v2, 0x7f0c0b87

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    if-ne v1, v8, :cond_2

    const v2, 0x7f0c0b88

    goto :goto_0

    :cond_2
    const v2, 0x7f0c0b89

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    const v5, 0x7f0c0b8a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    const v5, 0x7f0c0b8b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    const v5, 0x7f0c0b8c

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_6
    const v5, 0x7f0c0b85

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v8, v3

    if-eqz v8, :cond_3

    move v2, v6

    :goto_0
    array-length v8, v5

    if-eqz v8, :cond_4

    move v4, v6

    :goto_1
    array-length v8, v1

    if-eqz v8, :cond_5

    move v0, v6

    :goto_2
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    :cond_2
    const v6, 0x7f0c070b

    :goto_3
    return v6

    :cond_3
    move v2, v7

    goto :goto_0

    :cond_4
    move v4, v7

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    const v6, 0x7f0c0ed4

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    const v6, 0x7f0c0ed6

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    const v6, 0x7f0c0ed3

    goto :goto_3

    :cond_9
    const v6, 0x7f0c0ed5

    goto :goto_3
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x200

    if-ne v5, v8, :cond_1

    move v1, v7

    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v5, 0x105002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p3, :cond_2

    move v0, v6

    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/activity/HtcWrapHeader;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v4, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v13, 0x80

    invoke-virtual {v8, v4, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_2

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v13, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    const-string v13, "com.android.settings.icon"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :cond_0
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_1
    iput-object v12, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v11, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v13, 0x1

    :goto_2
    return v13

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :catch_0
    move-exception v13

    goto :goto_1

    :catch_1
    move-exception v13

    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromRunTimeEnabledOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/activity/HtcWrapHeader;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ">;",
            "Lcom/android/settings/framework/activity/HtcWrapHeader;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.htc.settings.category.PLUGIN_ENTRY"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.orangelabs.rcs"

    const-string v8, "com.orangelabs.rcs.settings.SettingsDisplay"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x80

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    new-instance v1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v1}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    :goto_1
    iget v6, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v6, :cond_2

    iget v6, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    :goto_2
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v6, :cond_0

    iget-object v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v6, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    iput-object v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    :cond_0
    iput-object v1, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v7, 0x7f09030c

    iput-wide v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const/4 v6, 0x0

    iput-boolean v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_1

    :cond_2
    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v6, :cond_3

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_2

    :cond_3
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    iget v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    invoke-interface {p1, v6, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-boolean v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    return v6
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;I)Z
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method
