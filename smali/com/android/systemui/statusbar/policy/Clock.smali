.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$1;,
        Lcom/android/systemui/statusbar/policy/Clock$2;,
        Lcom/android/systemui/statusbar/policy/Clock$3;
    }
.end annotation


# instance fields
.field private final mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private mDemoMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecondTick:Ljava/lang/Runnable;

.field private mSecondsHandler:Landroid/os/Handler;

.field private final mShowDark:Z

.field private mShowSeconds:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;
    .param p1, "-value"    # Ljava/util/Calendar;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/Clock;
    .param p1, "-value"    # Ljava/util/Locale;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    .line 160
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 374
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$2;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$3;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 100
    sget-object v2, Lcom/android/systemui/R$styleable;->Clock:[I

    .line 98
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    .line 104
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void

    .line 105
    :catchall_0
    move-exception v1

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    throw v1
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 21

    .prologue
    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 270
    .local v7, "context":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v12

    .line 271
    .local v12, "is24":Z
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v8

    .line 273
    .local v8, "d":Llibcore/icu/LocaleData;
    const v2, 0xef00

    .line 274
    .local v2, "MAGIC1":C
    const v3, 0xef01

    .line 277
    .local v3, "MAGIC2":C
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 278
    if-eqz v12, :cond_2

    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    .line 280
    .local v9, "format":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 281
    new-instance v19, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 288
    const/4 v4, -0x1

    .line 289
    .local v4, "a":I
    const/4 v15, 0x0

    .line 290
    .local v15, "quoted":Z
    const/4 v11, 0x0

    .end local v15    # "quoted":Z
    .local v11, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    .line 291
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 293
    .local v6, "c":C
    const/16 v19, 0x27

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 294
    xor-int/lit8 v15, v15, 0x1

    .line 296
    :cond_0
    if-nez v15, :cond_5

    const/16 v19, 0x61

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    .line 297
    move v4, v11

    .line 302
    .end local v6    # "c":C
    :cond_1
    if-ltz v4, :cond_7

    .line 304
    move v5, v4

    .line 305
    .local v5, "b":I
    :goto_2
    if-lez v4, :cond_6

    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 306
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 278
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v9    # "format":Ljava/lang/String;
    .end local v11    # "i":I
    :cond_2
    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_0

    .line 279
    .end local v9    # "format":Ljava/lang/String;
    :cond_3
    if-eqz v12, :cond_4

    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_0

    .end local v9    # "format":Ljava/lang/String;
    :cond_4
    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_0

    .line 290
    .restart local v4    # "a":I
    .restart local v6    # "c":C
    .restart local v11    # "i":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 308
    .end local v6    # "c":C
    .restart local v5    # "b":I
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0xef00

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 309
    const-string/jumbo v20, "a"

    .line 308
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 309
    const v20, 0xef01

    .line 308
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 309
    add-int/lit8 v20, v5, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 308
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 312
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v11    # "i":I
    :cond_7
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 313
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 317
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 319
    .local v16, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 320
    const v19, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 321
    .local v13, "magic1":I
    const v19, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 322
    .local v14, "magic2":I
    if-ltz v13, :cond_b

    if-le v14, v13, :cond_b

    .line 323
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 324
    .local v10, "formatted":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 325
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 335
    :goto_4
    return-object v10

    .line 315
    .end local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v13    # "magic1":I
    .end local v14    # "magic2":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_3

    .line 327
    .restart local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .restart local v13    # "magic1":I
    .restart local v14    # "magic2":I
    .restart local v16    # "result":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 328
    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const v19, 0x3f333333    # 0.7f

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 330
    .local v18, "style":Landroid/text/style/CharacterStyle;
    const/16 v19, 0x22

    .line 329
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v13, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 332
    .end local v18    # "style":Landroid/text/style/CharacterStyle;
    :cond_a
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 333
    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 339
    .end local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v13    # "magic1":I
    .end local v14    # "magic2":I
    :cond_b
    return-object v16
.end method

.method private updateClockVisibility()V
    .locals 2

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 199
    return-void

    .line 197
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_0
.end method

.method private updateShowSeconds()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    .line 246
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    mul-long/2addr v4, v6

    add-long/2addr v4, v6

    .line 251
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_0
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 222
    const/high16 v1, 0x800000

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 223
    .local v0, "clockVisibleByPolicy":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eq v0, v1, :cond_0

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibilityByPolicy(Z)V

    .line 226
    :cond_0
    return-void

    .line 222
    .end local v0    # "clockVisibleByPolicy":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "clockVisibleByPolicy":Z
    goto :goto_0
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 347
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v5, :cond_1

    const-string/jumbo v5, "enter"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "exit"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 350
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto :goto_0

    .line 352
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "clock"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    const-string/jumbo v5, "millis"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "millis":Ljava/lang/String;
    const-string/jumbo v5, "hhmm"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "hhmm":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 356
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 369
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/Clock;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 357
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 358
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, "hh":I
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 361
    .local v4, "mm":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 360
    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    .line 362
    .local v2, "is24":Z
    if-eqz v2, :cond_5

    .line 363
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 367
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 365
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 112
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_0

    .line 115
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 116
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 125
    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    const/4 v4, 0x0

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "clock_seconds"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 127
    const-string/jumbo v2, "icon_blacklist"

    aput-object v2, v1, v6

    .line 126
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v0, :cond_0

    .line 130
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 138
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    .line 143
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .prologue
    .line 230
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    .line 231
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    const v0, 0x7f0702a4

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 238
    const v1, 0x7f0702a5

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 241
    const v2, 0x7f0702a3

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 236
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setPaddingRelative(IIII)V

    .line 243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 151
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v0, :cond_0

    .line 155
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 210
    const-string/jumbo v1, "clock_seconds"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "clock"

    .line 214
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    goto :goto_0
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    .line 193
    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    .line 188
    return-void
.end method

.method final updateClock()V
    .locals 4

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method
