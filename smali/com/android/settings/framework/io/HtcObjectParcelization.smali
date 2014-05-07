.class public Lcom/android/settings/framework/io/HtcObjectParcelization;
.super Ljava/lang/Object;
.source "HtcObjectParcelization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall(Ljava/lang/String;Landroid/os/Parcelable;)Ljava/lang/Exception;
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static unmarshall(Ljava/lang/String;)Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;
    .locals 9

    const/16 v7, 0x80

    new-array v2, v7, [B

    new-instance v3, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;

    invoke-direct {v3}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    #setter for: Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mException:Ljava/lang/Exception;
    invoke-static {v3, v4}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->access$102(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    :goto_1
    return-object v3

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, v2

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    #setter for: Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mParcel:Landroid/os/Parcel;
    invoke-static {v3, v6}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->access$002(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Landroid/os/Parcel;)Landroid/os/Parcel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    #setter for: Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mException:Ljava/lang/Exception;
    invoke-static {v3, v4}, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->access$102(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_1
.end method
