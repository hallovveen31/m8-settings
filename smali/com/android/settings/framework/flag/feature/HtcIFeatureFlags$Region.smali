.class public Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags$Region;
.super Ljava/lang/Object;
.source "HtcIFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# static fields
.field public static final ARABIC:I = 0x7

.field public static final ASIA:I = 0x5

.field public static final CHINA:I = 0x3

.field public static final EUROPE:I = 0x6

.field public static final GLOBAL:I = 0x0

.field public static final HK:I = 0x8

.field public static final JAPAN:I = 0x4

.field public static final KEY:Ljava/lang/String; = "region"

.field public static final MIDDLE_EAST:I = 0xc

.field public static final MMR:I = 0xa

.field public static final NORTH_AMERICA:I = 0x1

.field public static final PACIFIC:I = 0xb

.field public static final SOUTH_AMERICA:I = 0x2

.field public static final TW:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .parameter "region"

    .prologue
    .line 391
    packed-switch p0, :pswitch_data_0

    .line 432
    const-string v0, "UNKNOWN"

    .line 434
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 393
    .end local v0           #name:Ljava/lang/String;
    :pswitch_0
    const-string v0, "Global"

    .line 394
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 396
    .end local v0           #name:Ljava/lang/String;
    :pswitch_1
    const-string v0, "North America"

    .line 397
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 399
    .end local v0           #name:Ljava/lang/String;
    :pswitch_2
    const-string v0, "South America"

    .line 400
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 402
    .end local v0           #name:Ljava/lang/String;
    :pswitch_3
    const-string v0, "China"

    .line 403
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 405
    .end local v0           #name:Ljava/lang/String;
    :pswitch_4
    const-string v0, "Japan"

    .line 406
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 408
    .end local v0           #name:Ljava/lang/String;
    :pswitch_5
    const-string v0, "Asia"

    .line 409
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 411
    .end local v0           #name:Ljava/lang/String;
    :pswitch_6
    const-string v0, "Europe"

    .line 412
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 414
    .end local v0           #name:Ljava/lang/String;
    :pswitch_7
    const-string v0, "Arabic"

    .line 415
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 417
    .end local v0           #name:Ljava/lang/String;
    :pswitch_8
    const-string v0, "HK"

    .line 418
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 420
    .end local v0           #name:Ljava/lang/String;
    :pswitch_9
    const-string v0, "TW"

    .line 421
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 423
    .end local v0           #name:Ljava/lang/String;
    :pswitch_a
    const-string v0, "MMR"

    .line 424
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 426
    .end local v0           #name:Ljava/lang/String;
    :pswitch_b
    const-string v0, "Pacific"

    .line 427
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 429
    .end local v0           #name:Ljava/lang/String;
    :pswitch_c
    const-string v0, "Middle East"

    .line 430
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
