.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 53
    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    .line 56
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 60
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 61
    const v10, 0x7f11003d

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 52
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 68
    const-string/jumbo v1, "3G"

    .line 71
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 75
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 76
    const v10, 0x7f110049

    .line 77
    const v11, 0x7f080313

    .line 79
    const v13, 0x7f0801cd

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 67
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 83
    const-string/jumbo v1, "WFC"

    .line 86
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 90
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 82
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 95
    const-string/jumbo v1, "Unknown"

    .line 98
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 102
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 94
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 107
    const-string/jumbo v1, "E"

    .line 110
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 114
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 115
    const v10, 0x7f11004d

    .line 116
    const v11, 0x7f080316

    .line 118
    const v13, 0x7f0801d1

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 106
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 122
    const-string/jumbo v1, "1X"

    .line 125
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 129
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 130
    const v10, 0x7f11004c

    .line 131
    const v11, 0x7f080312

    .line 133
    const v13, 0x7f0801cc

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 121
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 137
    const-string/jumbo v1, "G"

    .line 140
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 144
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 145
    const v10, 0x7f11004e

    .line 146
    const v11, 0x7f080317

    .line 148
    const v13, 0x7f0801d2

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 136
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 152
    const-string/jumbo v1, "H"

    .line 155
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 159
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 160
    const v10, 0x7f110048

    .line 161
    const v11, 0x7f080318

    .line 163
    const v13, 0x7f0801d3

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 151
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 167
    const-string/jumbo v1, "4G"

    .line 170
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 174
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 175
    const v10, 0x7f11004a

    .line 176
    const v11, 0x7f080314

    .line 178
    const v13, 0x7f0801ce

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 166
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 182
    const-string/jumbo v1, "4G+"

    .line 185
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 189
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 190
    const v10, 0x7f11004b

    .line 191
    const v11, 0x7f080315

    .line 193
    const v13, 0x7f0801cf

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 181
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 197
    const-string/jumbo v1, "LTE"

    .line 200
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 204
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 205
    const v10, 0x7f110050

    .line 206
    const v11, 0x7f080319

    .line 208
    const v13, 0x7f0801d5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 196
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 211
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 212
    const-string/jumbo v1, "LTE+"

    .line 215
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 219
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 220
    const v10, 0x7f110051

    .line 221
    const v11, 0x7f08031a

    .line 223
    const v13, 0x7f0801d6

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 211
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 227
    const-string/jumbo v1, "DataDisabled"

    .line 230
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 234
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 235
    const v10, 0x7f110042

    .line 236
    const v11, 0x7f080311

    .line 238
    const v13, 0x7f0801ba

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 226
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 22
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
