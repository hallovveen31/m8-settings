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

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "titleResId"
    .parameter "positiveAction"

    .prologue
    .line 683
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 685
    const v1, 0x7f0c12be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 686
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$1;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "user"

    .prologue
    const/4 v5, 0x1

    .line 587
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 589
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 593
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 594
    const/4 v5, 0x0

    .line 603
    :goto_0
    return v5

    .line 596
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 597
    .local v4, userId:I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 598
    .local v3, um:Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 599
    .local v2, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 601
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v6

    goto :goto_0

    .line 596
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #um:Landroid/os/UserManager;
    .end local v4           #userId:I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .parameter "localeStr"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 448
    if-nez p0, :cond_0

    .line 449
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 457
    :goto_0
    return-object v1

    .line 450
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, brokenDownLocale:[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 453
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 455
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
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
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    .line 501
    const/high16 v0, 0x200

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 502
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 503
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 504
    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 428
    if-nez p0, :cond_1

    .line 438
    :cond_0
    return-object v0

    .line 429
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const-string v0, ""

    .line 434
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
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

    .line 436
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
    .parameter "batteryChangedIntent"

    .prologue
    .line 462
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 463
    .local v0, level:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 464
    .local v1, scale:I
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
    .parameter "res"
    .parameter "batteryChangedIntent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 468
    move-object v0, p1

    .line 470
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 471
    .local v1, plugType:I
    const-string v5, "status"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 473
    .local v3, status:I
    if-ne v3, v8, :cond_3

    .line 474
    const v5, 0x7f0c0b86

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, statusString:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 477
    if-ne v1, v7, :cond_1

    .line 478
    const v2, 0x7f0c0b87

    .line 484
    .local v2, resId:I
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

    .line 496
    .end local v2           #resId:I
    :cond_0
    :goto_1
    return-object v4

    .line 479
    :cond_1
    if-ne v1, v8, :cond_2

    .line 480
    const v2, 0x7f0c0b88

    .restart local v2       #resId:I
    goto :goto_0

    .line 482
    .end local v2           #resId:I
    :cond_2
    const v2, 0x7f0c0b89

    .restart local v2       #resId:I
    goto :goto_0

    .line 486
    .end local v2           #resId:I
    .end local v4           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 487
    const v5, 0x7f0c0b8a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 488
    .end local v4           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 489
    const v5, 0x7f0c0b8b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 490
    .end local v4           #statusString:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 491
    const v5, 0x7f0c0b8c

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 493
    .end local v4           #statusString:Ljava/lang/String;
    :cond_6
    const v5, 0x7f0c0b85

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #statusString:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 421
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 423
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 424
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 624
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 630
    .local v6, localRawProfile:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-object v4

    .line 633
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 638
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 636
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 638
    .local v7, localRowProfileId:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 642
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

    .line 648
    .local v10, structuredName:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 651
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 660
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 638
    .end local v7           #localRowProfileId:J
    .end local v10           #structuredName:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 654
    .restart local v7       #localRowProfileId:J
    .restart local v10       #structuredName:Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 655
    .local v9, partialName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 656
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 660
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    goto :goto_0

    .end local v9           #partialName:Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "full"

    .prologue
    .line 607
    if-eqz p1, :cond_0

    .line 608
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 666
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 668
    .local v6, profile:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 676
    :goto_0
    return-object v3

    .line 671
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 674
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 615
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, given:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0           #given:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #given:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 9
    .parameter "cm"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 533
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, usbRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v8, v3

    if-eqz v8, :cond_3

    move v2, v6

    .line 538
    .local v2, usbAvailable:Z
    :goto_0
    array-length v8, v5

    if-eqz v8, :cond_4

    move v4, v6

    .line 539
    .local v4, wifiAvailable:Z
    :goto_1
    array-length v8, v1

    if-eqz v8, :cond_5

    move v0, v6

    .line 541
    .local v0, bluetoothAvailable:Z
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

    .line 558
    :cond_2
    const v6, 0x7f0c070b

    .line 581
    :goto_3
    return v6

    .end local v0           #bluetoothAvailable:Z
    .end local v2           #usbAvailable:Z
    .end local v4           #wifiAvailable:Z
    :cond_3
    move v2, v7

    .line 537
    goto :goto_0

    .restart local v2       #usbAvailable:Z
    :cond_4
    move v4, v7

    .line 538
    goto :goto_1

    .restart local v4       #wifiAvailable:Z
    :cond_5
    move v0, v7

    .line 539
    goto :goto_2

    .line 559
    .restart local v0       #bluetoothAvailable:Z
    :cond_6
    if-eqz v4, :cond_7

    .line 575
    const v6, 0x7f0c0ed4

    goto :goto_3

    .line 576
    :cond_7
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 577
    const v6, 0x7f0c0ed6

    goto :goto_3

    .line 578
    :cond_8
    if-eqz v2, :cond_9

    .line 579
    const v6, 0x7f0c0ed3

    goto :goto_3

    .line 581
    :cond_9
    const v6, 0x7f0c0ed5

    goto :goto_3
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 408
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 410
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 411
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 698
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

    .prologue
    .line 378
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 385
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 387
    .local v0, telephony:Landroid/telephony/TelephonyManager;
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
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 391
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 394
    .local v0, cm:Landroid/net/ConnectivityManager;
    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualGSMPhoneEnable:Z

    if-eqz v2, :cond_1

    .line 398
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
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 513
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x200

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 514
    .local v1, movePadding:Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 517
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 518
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x105002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 520
    .local v3, paddingSide:I
    const v5, 0x105002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 523
    .local v2, paddingBottom:I
    if-eqz p3, :cond_2

    move v0, v6

    .line 524
    .local v0, effectivePaddingSide:I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 526
    .end local v0           #effectivePaddingSide:I
    .end local v2           #paddingBottom:I
    .end local v3           #paddingSide:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1           #movePadding:Z
    :cond_1
    move v1, v6

    .line 513
    goto :goto_0

    .restart local v1       #movePadding:Z
    .restart local v2       #paddingBottom:I
    .restart local v3       #paddingSide:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 523
    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/activity/HtcWrapHeader;)Z
    .locals 16
    .parameter "context"
    .parameter
    .parameter "wrapHeader"
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

    .prologue
    .line 256
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/activity/HtcWrapHeader;>;"
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 257
    .local v1, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v4, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 258
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 261
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/16 v13, 0x80

    invoke-virtual {v8, v4, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 262
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 263
    .local v6, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 264
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 265
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_2

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 269
    .local v12, title:Ljava/lang/String;
    const/4 v11, 0x0

    .line 273
    .local v11, summary:Ljava/lang/String;
    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 275
    .local v9, res:Landroid/content/res/Resources;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 277
    .local v7, metaData:Landroid/os/Bundle;
    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    .line 278
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 279
    const-string v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 280
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 290
    .end local v7           #metaData:Landroid/os/Bundle;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 291
    invoke-virtual {v10, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 297
    :cond_1
    iput-object v12, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 298
    iput-object v11, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 300
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 303
    const/4 v13, 0x1

    .line 312
    .end local v2           #i:I
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #listSize:I
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v11           #summary:Ljava/lang/String;
    .end local v12           #title:Ljava/lang/String;
    :goto_2
    return v13

    .line 263
    .restart local v2       #i:I
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6       #listSize:I
    .restart local v8       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v2           #i:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #listSize:I
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 284
    .restart local v2       #i:I
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6       #listSize:I
    .restart local v8       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v11       #summary:Ljava/lang/String;
    .restart local v12       #title:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1

    .line 282
    :catch_1
    move-exception v13

    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromRunTimeEnabledOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/framework/activity/HtcWrapHeader;)Z
    .locals 9
    .parameter "context"
    .parameter
    .parameter "wrapHeader"
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

    .prologue
    .line 318
    .local p1, outWrapHeaders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/framework/activity/HtcWrapHeader;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 319
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "com.htc.settings.category.PLUGIN_ENTRY"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.orangelabs.rcs"

    const-string v8, "com.orangelabs.rcs.settings.SettingsDisplay"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const/16 v6, 0x80

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 333
    .local v5, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x1

    iput-boolean v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    .line 335
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 339
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 341
    .local v3, isNotInList:Z
    new-instance v1, Lcom/htc/preference/HtcPreferenceActivity$Header;

    invoke-direct {v1}, Lcom/htc/preference/HtcPreferenceActivity$Header;-><init>()V

    .line 342
    .local v1, header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 345
    iget v6, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v6, :cond_1

    .line 346
    iget v6, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 352
    :goto_1
    iget v6, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v6, :cond_2

    .line 353
    iget v6, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 360
    :goto_2
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    if-eqz v6, :cond_0

    .line 361
    iget-object v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-object v6, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    iput-object v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 363
    :cond_0
    iput-object v1, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    .line 364
    iget-object v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    const-wide/32 v7, 0x7f09030c

    iput-wide v7, v6, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 365
    const/4 v6, 0x0

    iput-boolean v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    goto :goto_0

    .line 348
    :cond_1
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    goto :goto_1

    .line 354
    :cond_2
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_3

    .line 355
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    goto :goto_2

    .line 357
    :cond_3
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_2

    .line 368
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #header:Lcom/htc/preference/HtcPreferenceActivity$Header;
    .end local v3           #isNotInList:Z
    :cond_4
    iget v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->index:I

    invoke-interface {p1, v6, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-boolean v6, p2, Lcom/android/settings/framework/activity/HtcWrapHeader;->hide:Z

    return v6
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 129
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 130
    .local v5, preference:Lcom/htc/preference/HtcPreference;
    if-nez v5, :cond_0

    .line 163
    :goto_0
    return v7

    .line 134
    :cond_0
    invoke-virtual {v5}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 135
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 138
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 140
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 141
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 142
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 146
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 150
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 152
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method
