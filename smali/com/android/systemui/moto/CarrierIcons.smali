.class public Lcom/android/systemui/moto/CarrierIcons;
.super Ljava/lang/Object;
.source "CarrierIcons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;,
        Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;,
        Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;,
        Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;
    }
.end annotation


# static fields
.field public static final WIDE_1X:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_2G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_3G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_3G_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_4G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_4G_ATT:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_4G_LTE:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_4G_LTE_ATT:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_4G_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_E:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_H:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_H_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_LTE:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_LTE_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

.field public static final WIDE_OFF:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 15
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-direct {v1, v3, v3, v3}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 16
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    invoke-direct {v2, v3, v3, v3}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_OFF:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 20
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 21
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f0

    .line 22
    const v3, 0x7f080414

    .line 23
    const v4, 0x7f080404

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 24
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f08037d

    .line 25
    const v4, 0x7f0803b9

    .line 26
    const v5, 0x7f080395

    .line 24
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 19
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_1X:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 29
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 30
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803fa

    .line 31
    const v3, 0x7f08041d

    .line 32
    const v4, 0x7f08040d

    .line 30
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 33
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f0803a5

    .line 34
    const v4, 0x7f0803c2

    .line 35
    const v5, 0x7f08039e

    .line 33
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 28
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_E:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 38
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 39
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803fb

    .line 40
    const v3, 0x7f08041e

    .line 41
    const v4, 0x7f08040e

    .line 39
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 42
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f0803a6

    .line 43
    const v4, 0x7f0803c3

    .line 44
    const v5, 0x7f08039f

    .line 42
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 38
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 37
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 47
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 48
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f1

    .line 49
    const v3, 0x7f080415

    .line 50
    const v4, 0x7f080405

    .line 48
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 51
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f080382

    .line 52
    const v4, 0x7f0803ba

    .line 53
    const v5, 0x7f080396

    .line 51
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 46
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_2G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 56
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 57
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f3

    .line 58
    const v3, 0x7f080417

    .line 59
    const v4, 0x7f080407

    .line 57
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 60
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f080388

    .line 61
    const v4, 0x7f0803bc

    .line 62
    const v5, 0x7f080398

    .line 60
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 55
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_3G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 65
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 66
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f2

    .line 67
    const v3, 0x7f080416

    .line 68
    const v4, 0x7f080406

    .line 66
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 69
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f080387

    .line 70
    const v4, 0x7f0803bb

    .line 71
    const v5, 0x7f080397

    .line 69
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 65
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 64
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_3G_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 74
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 75
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f7

    .line 76
    const v3, 0x7f08041b

    .line 77
    const v4, 0x7f08040b

    .line 75
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 78
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f08038f

    .line 79
    const v4, 0x7f0803c0

    .line 80
    const v5, 0x7f08039c

    .line 78
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 74
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 73
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 83
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 84
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f6

    .line 85
    const v3, 0x7f08041a

    .line 86
    const v4, 0x7f08040a

    .line 84
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 87
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f08038e

    .line 88
    const v4, 0x7f0803bf

    .line 89
    const v5, 0x7f08039b

    .line 87
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 83
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 82
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 93
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 94
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f8

    .line 95
    const v3, 0x7f08041c

    .line 96
    const v4, 0x7f08040c

    .line 94
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 97
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f080394

    .line 98
    const v4, 0x7f0803c1

    .line 99
    const v5, 0x7f08039d

    .line 97
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 93
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 92
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_ATT:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 103
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 104
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f4

    .line 105
    const v3, 0x7f080418

    .line 106
    const v4, 0x7f080408

    .line 104
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 107
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f08038d

    .line 108
    const v4, 0x7f0803bd

    .line 109
    const v5, 0x7f080399

    .line 107
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 103
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 102
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_LTE:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 113
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 114
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803f5

    .line 115
    const v3, 0x7f080419

    .line 116
    const v4, 0x7f080409

    .line 114
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 117
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f080393

    .line 118
    const v4, 0x7f0803be

    .line 119
    const v5, 0x7f08039a

    .line 117
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 113
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 112
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_4G_LTE_ATT:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 123
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 124
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803fc

    .line 125
    const v3, 0x7f08041f

    .line 126
    const v4, 0x7f08040f

    .line 124
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 127
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f0803a7

    .line 128
    const v4, 0x7f0803c4

    .line 129
    const v5, 0x7f0803a0

    .line 127
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 123
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 122
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_H:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 132
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 133
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f0803fd

    .line 134
    const v3, 0x7f080420

    .line 135
    const v4, 0x7f080410

    .line 133
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 136
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f0803a8

    .line 137
    const v4, 0x7f0803c5

    .line 138
    const v5, 0x7f0803a1

    .line 136
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 132
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 131
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_H_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 141
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 142
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f080401

    .line 143
    const v3, 0x7f080422

    .line 144
    const v4, 0x7f080412

    .line 142
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 145
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f0803ac

    .line 146
    const v4, 0x7f0803c7

    .line 147
    const v5, 0x7f0803a3

    .line 145
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 141
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 140
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_LTE:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 150
    new-instance v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 151
    new-instance v1, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v2, 0x7f080400

    .line 152
    const v3, 0x7f080421

    .line 153
    const v4, 0x7f080411

    .line 151
    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 154
    new-instance v2, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    const v3, 0x7f0803ab

    .line 155
    const v4, 0x7f0803c6

    .line 156
    const v5, 0x7f0803a2

    .line 154
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>(III)V

    .line 150
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;-><init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V

    .line 149
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons;->WIDE_LTE_PLUS:Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
