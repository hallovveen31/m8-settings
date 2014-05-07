.class public Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags$DeviceType;
.super Ljava/lang/Object;
.source "HtcIFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceType"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "device_type"

.field public static final PHONE:I = 0x1

.field public static final TABLET:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .parameter "deviceType"

    .prologue
    .line 273
    packed-switch p0, :pswitch_data_0

    .line 281
    const-string v0, "UNKNOWN"

    .line 283
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 275
    .end local v0           #name:Ljava/lang/String;
    :pswitch_0
    const-string v0, "PHONE"

    .line 276
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 278
    .end local v0           #name:Ljava/lang/String;
    :pswitch_1
    const-string v0, "TABLET"

    .line 279
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
